"""
Curve utilities

This module contains functions to calculate points on a bezier curve and a b-spline curve.
"""
from typing import List, Tuple

import numpy as np
from numpy.typing import NDArray

from sgi.data2d import Coords

## Bezier Curve with blending functions ##


BEZIER_MATRIX = np.array(
    [
        [-1, 3, -3, 1],
        [3, -6, 3, 0],
        [-3, 3, 0, 0],
        [1, 0, 0, 0],
    ]
)


def parameter_vector(t: float) -> NDArray:
    """Calculate parameter vector"""
    return np.array([t**3, t**2, t, 1])


def bezier_blending_matrix(t: float) -> NDArray:
    """Calculate bezier blending matrix"""
    return np.dot(BEZIER_MATRIX, parameter_vector(t))


def bezier_blend_curve(points: List[Coords[float]], t: float) -> Coords[float]:
    """Calculate bezier blend curve
    :param points:
        list of 4 control points (start, control1, control2, end)
    :param t:
        blend factor
    :return:
        point on the bezier blend curve
    """
    # calculate blending matrix
    b_matrix = bezier_blending_matrix(t)
    # calculate x and y coordinates
    x = sum(b_matrix[i] * points[i].x for i in range(4))
    y = sum(b_matrix[i] * points[i].y for i in range(4))
    return Coords(x, y)


def calculate_bezier_points(points: List[Coords[float]], n: int) -> List[Coords[float]]:
    """Calculate bezier points for a cubic bezier curve.
    :param points:
        list of 4 control points (start, control1, control2, end)
    :param n:
        number of points to calculate
    :return:
        list of n points on the bezier curve
    """
    # separate points into groups of 4
    point_groups = [points[i : i + 4] for i in range(0, len(points), 4)]
    # calculate points for each group
    bezier_points: List[Coords[float]] = []
    for group in point_groups:
        bezier_points.extend(
            bezier_blend_curve(group, t)
            for t in np.linspace(0, 1, n // len(point_groups))
        )
    return bezier_points


## B-Spline Curve with Forward Differences ##


BSPLINE_MATRIX = (
    np.array(
        [
            [-1, 3, -3, 1],
            [3, -6, 3, 0],
            [-3, 0, 3, 0],
            [1, 4, 1, 0],
        ]
    )
    / 6
)


def calculate_initial_diffs(
    delta: float, a: float, b: float, c: float, d: float
) -> NDArray:
    """Calculate initial differences"""
    d3 = delta**3
    d2 = delta**2
    return np.array(
        [
            d,
            a * d3 + b * d2 + c * delta,
            6 * a * d3 + 2 * b * d2,
            6 * a * d3,
        ]
    )


def calculate_bspline_parameters(
    points: List[Coords[float]], delta: float
) -> Tuple[NDArray, NDArray]:
    """Calculate b-spline parameters"""
    M_bs = BSPLINE_MATRIX
    G_bs = np.array([[p.x, p.y] for p in points])
    # calculate initial differences
    coeff_x = M_bs.dot(G_bs[:, 0]).T
    coeff_y = M_bs.dot(G_bs[:, 1]).T
    # calculate parameters
    initial_diffs_x = calculate_initial_diffs(delta, *coeff_x)
    initial_diffs_y = calculate_initial_diffs(delta, *coeff_y)
    return initial_diffs_x, initial_diffs_y


def calculate_bspline_points(
    points: List[Coords[float]], n: int
) -> List[Coords[float]]:
    """Calculate b-spline points for a cubic b-spline curve.
    :param points:
        list of control points (c0, c1, ..., cn).
        When dealing with cubic splines, n must be multiple of 4.
    :param n:
        number of points to calculate
    :return:
        list of n points on the b-spline curve
    """
    # Duplicate first and last point.
    # newpoints = [points[0]] + points + [points[-1]]
    newpoints = points
    # Separate points into groups of 4.
    point_groups = [newpoints[i : i + 4] for i in range(0, len(newpoints) - 3)]

    delta = 1 / n
    # Calculate points for each group.
    b_spline_points: List[Coords[float]] = []
    for group in point_groups:
        delta_x, delta_y = calculate_bspline_parameters(group, delta)
        x = delta_x[0]
        y = delta_y[0]
        b_spline_points.append(Coords(x, y))
        for _ in range(int(1 // delta)):
            x += delta_x[1]
            y += delta_y[1]
            delta_x[1] += delta_x[2]
            delta_y[1] += delta_y[2]
            delta_x[2] += delta_x[3]
            delta_y[2] += delta_y[3]
            b_spline_points.append(Coords(x, y))
    return b_spline_points