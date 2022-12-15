"""
Graphics module for the SGI project.
Implements the graphics pipeline.
"""

from dataclasses import dataclass, field
from itertools import count
from typing import Dict, Iterable, List, Optional

import numpy as np
from numpy.typing import NDArray

from sgi.data2d import (
    BezierCurve,
    BSplineCurve,
    Coords,
    Line,
    Object2D,
    Point,
    Wireframe,
)
from sgi.transforms import preprocess_transforms, rotate, scale, transform, translate
from sgi.curve_utils import calculate_bezier_points, calculate_bspline_points

@dataclass
class Window:
    """
    Window representation of the "world". Uses a normalized coordinate system,
    where the minimum x and y values are [-1, -1] and the maximum x and y values
    are [1, 1]. The window is centered at (0, 0).
    """

    # Limits of the window.  Represents the points in the world that are mapped
    # to the corners of the window when the window is first created (parallel to
    # the world axes).
    min: Coords[float]
    max: Coords[float]
    # Window center in world coordinates.
    wc: Coords[float] = field(init=False)
    # View up vector. Is initialized upwards, parallel to the y axis in
    # the world coordinate system.
    vup: Coords[float] = field(init=False)
    # Scale of the mapping from the world to the window.
    scaling_factor: float = 1

    def __post_init__(self) -> None:
        self._default_min = Coords(self.min.x, self.min.y)
        self._default_max = Coords(self.max.x, self.max.y)
        self._default_wc = Coords[float](
            float(self.min.x + (self.max.x - self.min.x) / 2),
            float(self.min.y + (self.max.y - self.min.y) / 2),
        )
        self.wc = Coords(self._default_wc.x, self._default_wc.y)
        self.vup = Coords[float](0, 1)

    @property
    def vup_angle(self) -> float:
        """Angle between the view up vector and the positive y axis."""
        return np.pi / 2 - np.arctan2(self.vup.y, self.vup.x)

    def reset(self) -> None:
        """Reset to default size and positions"""
        self.max = Coords(self._default_max.x, self._default_max.y)
        self.min = Coords(self._default_min.x, self._default_min.y)
        self.wc = Coords(self._default_wc.x, self._default_wc.y)
        self.scaling_factor = 1
        self.vup = Coords(0, 1)

    def scale(self, factor: float) -> None:
        """Zoom in or out depending on factor provided."""
        self.scaling_factor *= 1 - factor

    def shift_x(self, step: float) -> None:
        """Shift window step positions in the x axis"""
        self.wc.x += step * np.sin(self.vup_angle + np.pi / 2)
        self.wc.y += step * np.cos(self.vup_angle + np.pi / 2)

    def shift_y(self, step: float) -> None:
        """Shift window step positions in the y axis"""
        self.wc.x += step * np.sin(self.vup_angle)
        self.wc.y += step * np.cos(self.vup_angle)

    def ncs_coords(self, point: Coords[float]) -> Coords[float]:
        """Create normalized description of a coordinate in the world"""
        ncs_matrix = preprocess_transforms(
            [
                translate(-self.wc.x, -self.wc.y),
                rotate(-self.vup_angle),
                scale(
                    2 * self.scaling_factor / (self.max.x - self.min.x),
                    2 * self.scaling_factor / (self.max.y - self.min.y),
                ),
            ]
        )
        return transform(ncs_matrix, point)

    def rotate(self, angle: float) -> None:
        """Rotate the view up vector by angle"""
        self.vup = transform(rotate(angle), self.vup)


@dataclass
class Viewport:
    """
    Viewport mapping class for transforming normalized window coordinates to viewport
    coordinates. Follows convention of viewport coordinates starting at the top left
    corner.
    """

    width: int
    height: int

    def transform(self, w: Window, p: Coords[float]) -> Coords[int]:
        """
        Transform a point from normalized window coordinates to viewport coordinates.
        Considers normalized window coordinates in the range [-1, 1].
        """
        xvp = (p.x + 1) / (2) * self.width + 10
        yvp = (1 - (p.y + 1) / (2)) * self.height + 10
        return Coords(int(xvp), int(yvp))


def get_unused_name(prefix: str, used_names: Iterable[str]) -> str:
    for i in count(start=1):
        new_name = f"{prefix}_{i}"
        if new_name not in used_names:
            return new_name
    assert False


@dataclass
class DisplayFile:
    """
    Display file representation of the "world".

    Stores objects in world coordinates, normalized coordinate and their colors.
    Also stores the viewport and window used to visualize and render the objects.
    """

    viewport: Viewport
    window: Window

    # Dict of objects (with world coordinates) that were added to the Scene.
    objects: Dict[str, Object2D] = field(default_factory=dict)

    def add_obj(
        self,
        coords: List[Coords[float]],
        color: Optional[str],
        name: Optional[str] = None,
        fill: bool = False,
    ) -> str:
        """
        Add an object to the scene.

        :param coords:
            List of coordinates of the object.
        :param color:
            Color of the object.
        :param name:
            Name of the object. If not provided, a name will be
            generated automatically.

        :return:
            Name of the object.
        """
        color = color if color else "#000000"
        if (s := len(coords)) == 1:
            name = name or get_unused_name("Ponto", self.objects.keys())
            self.objects[name] = Point(
                coords[0],
                self.window.ncs_coords(coords[0]),
                color=color,
                name=name,
            )
        elif s == 2:
            name = name or get_unused_name("Reta", self.objects.keys())
            self.objects[name] = Line(
                endpoints=tuple(coords),  # type: ignore [arg-type]
                n_endpoints=tuple(self.window.ncs_coords(c) for c in coords),  # type: ignore [arg-type]
                color=color,
                name=name,
            )
        else:
            name = name or get_unused_name("Polígono", self.objects.keys())
            self.objects[name] = Wireframe(
                vertices=coords,
                n_vertices=list(self.window.ncs_coords(c) for c in coords),
                color=color,
                name=name,
                fill=fill,
            )
        return name

    def add_curve(
        self,
        coords: List[Coords[float]],
        n_points: int = 100,
        color: Optional[str] = "#000000",
        name: Optional[str] = None,
        type: str = 'bezier',
    ) -> str:
        """
        Add a curve to the scene.

        :param coords:
            List of coordinates of the object.
        :param color:
            Color of the object.
        :param name:
            Name of the object. If not provided, a name will be
            generated automatically.

        :return:
            Name of the object.
        """
        color = color if color else "#000000"
        if type == 'bezier':
            name = name or get_unused_name("Bézier", self.objects.keys())
            pts = list(self.window.ncs_coords(c) for c in coords)
            self.objects[name] = BezierCurve(
                control_points=coords,
                n_control_points=pts,
                n_points=n_points,
                n_curve=calculate_bezier_points(pts, n_points),
                color=color,
                name=name,
            )
        elif type == 'bspline':
            name = name or get_unused_name("B-Spline", self.objects.keys())
            pts = list(self.window.ncs_coords(c) for c in coords)
            self.objects[name] = BSplineCurve(
                control_points=coords,
                n_control_points=pts,
                n_points=n_points,
                n_curve=calculate_bspline_points(pts, n_points),
                color=color,
                name=name,
            )
        else:
            raise ValueError(f"Invalid curve type: {type}")
        return name

    def update_normalized_coords(self) -> None:
        """
        Update normalized coordinates for all objects. Should only be called when the
        window is resized or the view is changed.
        """
        for obj in self.objects.values():
            self.update_obj_normalized_coords(obj)

    def update_obj_normalized_coords(self, obj: Object2D) -> None:
        """
        Update normalized coordinates for a single object. Should only be called when
        a single object has been transformed.
        """
        match obj:
            case Point(pos):
                obj.n_pos = self.window.ncs_coords(pos)
            case Line(endpoints):
                obj.n_endpoints = tuple(
                    self.window.ncs_coords(c) for c in endpoints
                )  # type: ignore [assignment]
            case Wireframe(vertices):
                obj.n_vertices = list(self.window.ncs_coords(c) for c in vertices)
            case BezierCurve(control_points):
                obj.n_control_points = list(
                    self.window.ncs_coords(c) for c in control_points
                )
                obj.n_curve = calculate_bezier_points(obj.n_control_points, obj.n_points)
            case BSplineCurve(control_points):
                obj.n_control_points = list(
                    self.window.ncs_coords(c) for c in control_points
                )
                obj.n_curve = calculate_bspline_points(obj.n_control_points, obj.n_points)
            case _:
                raise TypeError(f"Invalid object type {type(obj)}")

    def viewport_transform(self, p: Coords[float]) -> Coords[int]:
        """
        Transform a point from normalized window coordinates to viewport coordinates.
        Considers normalized window coordinates in the range [-1, 1].
        """
        return self.viewport.transform(self.window, p)
