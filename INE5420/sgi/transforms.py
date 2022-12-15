"""
Transformations for 2D objects.

This module contains functions to apply transformations to 2D objects,
such as translation, rotation, scaling.
"""

from dataclasses import replace
from functools import reduce
from typing import List

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

## 2D transformations ##


def preprocess_transforms(transforms: List[NDArray]) -> NDArray:
    """Precompute transformation matrix before applying to each point in object"""
    t_matrix = np.identity(3)
    return reduce(np.dot, transforms, t_matrix)


def translate(dx: float, dy: float) -> NDArray:
    """Calculate translation matrix"""
    return np.array([[1, 0, 0], [0, 1, 0], [dx, dy, 1]])


def scale(sx: float, sy: float) -> NDArray:
    """Calculate scaling matrix (over origin/center of world)"""
    return np.array([[sx, 0, 0], [0, sy, 0], [0, 0, 1]])


def rotate(theta: float) -> NDArray:
    """Calculate rotation matrix around the center of the world"""
    return np.array(
        [
            [np.cos(theta), -np.sin(theta), 0],
            [np.sin(theta), np.cos(theta), 0],
            [0, 0, 1],
        ]
    )


def transform_obj(obj: Object2D, transforms: List[NDArray]) -> Object2D:
    t_matrix = preprocess_transforms(transforms)
    match obj:
        case Point(pos):
            return replace(obj, pos=transform(t_matrix, pos))
        case Line(endpoints):
            return replace(
                obj, endpoints=tuple(transform(t_matrix, c) for c in endpoints)
            )
        case Wireframe(vertices):
            return replace(obj, vertices=list(transform(t_matrix, c) for c in vertices))
        case BezierCurve(control_points) | BSplineCurve(control_points):
            return replace(
                obj,
                control_points=list(transform(t_matrix, c) for c in control_points),
            )
        case _:
            raise TypeError(f"Invalid object type{type(obj)}")


def transform(t_matrix: NDArray, p: Coords[float]) -> Coords[float]:
    """Apply transformation matrix to coordinate"""
    coords_array = np.array([p.x, p.y, 1]).T
    t_coords = np.dot(coords_array, t_matrix)
    return Coords(*t_coords[:2])


def scale_natural(obj: Line | Wireframe, sx: float, sy: float) -> NDArray:
    """Scale around object center"""
    cx, cy = obj.center.x, obj.center.y
    return preprocess_transforms(
        [translate(-cx, -cy), scale(sx, sy), translate(cx, cy)]
    )


def rotate_arbitrary(arb: Coords[float], theta: float) -> NDArray:
    """Rotate around arbitrary point"""
    return preprocess_transforms(
        [
            translate(-arb.x, -arb.y),
            rotate(theta),
            translate(arb.x, arb.y),
        ]
    )


def rotate_obj_center(obj: Object2D, theta: float) -> NDArray:
    """Rotate around object center"""
    return rotate_arbitrary(obj.center, theta)
