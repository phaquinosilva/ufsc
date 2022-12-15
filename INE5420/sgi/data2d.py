"""
Dataclasses for 2D objects.
"""
from dataclasses import dataclass, field
from typing import Dict, Generic, List, Tuple, TypeVar

import numpy as np

T = TypeVar("T", int, float)


@dataclass
class Coords(Generic[T]):
    x: T
    y: T


@dataclass
class Point:
    """Point object. Represented by a single coordinate."""

    # World coordinates
    pos: Coords[float]
    # Normalized coordinates
    n_pos: Coords[float]
    # Color of the object, in either hex or rgb format.
    color: str = "#000000"
    # Name of the object
    name: str = field(default_factory=str)

    @property
    def center(self) -> Coords[float]:
        return self.pos


@dataclass
class Line:
    """Line object. Represented by a tuple with two endpoints."""

    # World coordinates
    endpoints: Tuple[Coords[float], Coords[float]]
    # Normalized coordinates
    n_endpoints: Tuple[Coords[float], Coords[float]]
    # Color of the object, in either hex or rgb format.
    color: str = field(default="#000000")
    # Name of the object
    name: str = field(default_factory=str)

    def __post_init__(self) -> None:
        if len(self.endpoints) != 2:
            raise ValueError("Line must have exactly two endpoints")

    @property
    def center(self) -> Coords[float]:
        return Coords(*np.mean([[c.x, c.y] for c in self.endpoints], axis=0))


@dataclass
class Wireframe:
    """Wireframe object. Represented by a list of vertices."""

    # World coordinates
    vertices: List[Coords[float]]
    # Normalized coordinates
    n_vertices: List[Coords[float]]
    # Color of the object, in either hex or rgb format.
    color: str = "#000000"
    # Flag to indicate if the object should be filled
    fill: bool = False
    # Name of the object
    name: str = field(default_factory=str)

    @property
    def center(self) -> Coords[float]:
        return Coords(*np.mean([[c.x, c.y] for c in self.vertices], axis=0))


@dataclass
class BezierCurve:
    """Bezier curve object. Represented by a list of control points."""

    # World coordinates
    control_points: List[Coords[float]]
    # Normalized coordinates.
    n_control_points: List[Coords[float]]
    # Number of points to use when drawing the curve
    n_points: int = 100
    # Normalized points of the curve
    n_curve: List[Coords[float]] = field(default_factory=list)
    # Color of the object, in either hex or rgb format.
    color: str = "#000000"
    # Name of the object
    name: str = field(default_factory=str)

    @property
    def center(self) -> Coords[float]:
        return Coords(*np.mean([[c.x, c.y] for c in self.control_points], axis=0))

    def __post_init__(self) -> None:
        if len(self.control_points) % 4 != 0 or len(self.control_points) < 4:
            raise ValueError(
                "The number of controle points in a Bézier curve must be at least four and be multiple of four."
            )


@dataclass
class BSplineCurve:
    """B-Spline curve object. Represented by a list of control points."""

    # World coordinates
    control_points: List[Coords[float]]
    # Normalized coordinates.
    n_control_points: List[Coords[float]]
    # Number of points to use when drawing the curve
    n_points: int = 100
    # Normalized points of the curve
    n_curve: List[Coords[float]] = field(default_factory=list)
    # Color of the object, in either hex or rgb format.
    color: str = "#000000"
    # Name of the object
    name: str = field(default_factory=str)

    @property
    def center(self) -> Coords[float]:
        return Coords(*np.mean([[c.x, c.y] for c in self.control_points], axis=0))

    def __post_init__(self) -> None:
        if len(self.control_points) < 3:
            raise ValueError("B-Spline curve must have at least three control points")


Object2D = Point | Line | Wireframe | BezierCurve | BSplineCurve
