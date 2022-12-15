"""
Clipping algorithms. 

Considers a window with coordinates [-1, 1] x [-1, 1],
and objects with noormalized coordinates to the window.
"""

from enum import IntFlag
from typing import Callable, List, Optional, Tuple

from sgi.data2d import Coords


def clip_point(c: Coords[float]) -> Optional[Coords[float]]:
    """Clip a point to the window."""
    if -1 <= c.x <= 1 and -1 <= c.y <= 1:
        return c
    return None


class OutCode(IntFlag):
    INSIDE = 0
    LEFT = 1 << 0
    RIGHT = 1 << 1
    BOTTOM = 1 << 2
    TOP = 1 << 3


def find_outcode(p: Coords[float]) -> OutCode:
    return (
        (OutCode.LEFT if p.x < -1 else OutCode.INSIDE)
        | (OutCode.RIGHT if p.x > 1 else OutCode.INSIDE)
        | (OutCode.BOTTOM if p.y < -1 else OutCode.INSIDE)
        | (OutCode.TOP if p.y > 1 else OutCode.INSIDE)
    )


def cohen_sutherland_clip(
    p1: Coords[float], p2: Coords[float]
) -> Optional[Tuple[Coords[float], Coords[float]]]:
    """Clip a line to the window using the Cohen-Sutherland algorithm."""
    # https://en.wikipedia.org/wiki/Cohen%E2%80%93Sutherland_algorithm
    outcode1 = find_outcode(p1)
    outcode2 = find_outcode(p2)
    while True:
        if outcode1 | outcode2 == OutCode.INSIDE:
            return (p1, p2)
        elif outcode1 & outcode2 != OutCode.INSIDE:
            return None
        else:
            if outcode1 != OutCode.INSIDE:
                outcode = outcode1
            else:
                outcode = outcode2
            if outcode & OutCode.TOP:
                x = p1.x + (p2.x - p1.x) * (1.0 - p1.y) / (p2.y - p1.y)
                y = 1.0
            elif outcode & OutCode.BOTTOM:
                x = p1.x + (p2.x - p1.x) * (-1.0 - p1.y) / (p2.y - p1.y)
                y = -1.0
            elif outcode & OutCode.RIGHT:
                y = p1.y + (p2.y - p1.y) * (1.0 - p1.x) / (p2.x - p1.x)
                x = 1.0
            elif outcode & OutCode.LEFT:
                y = p1.y + (p2.y - p1.y) * (-1.0 - p1.x) / (p2.x - p1.x)
                x = -1.0
            if outcode == outcode1:
                p1 = Coords(x, y)
                outcode1 = find_outcode(p1)
            else:
                p2 = Coords(x, y)
                outcode2 = find_outcode(p2)


def liang_barsky_clip(
    p1: Coords[float], p2: Coords[float]
) -> Optional[Tuple[Coords[float], Coords[float]]]:
    """Clip a line to the window using the Liang-Barsky algorithm."""
    # https://en.wikipedia.org/wiki/Liang%E2%80%93Barsky_algorithm
    x1, y1 = p1.x, p1.y
    x2, y2 = p2.x, p2.y
    dx = x2 - x1
    dy = y2 - y1
    p = [-dx, dx, -dy, dy]
    q = [x1 + 1, 1 - x1, y1 + 1, 1 - y1]
    u1 = 0.0
    u2 = 1.0
    for i in range(4):
        if p[i] == 0:
            if q[i] < 0:
                return None
        else:
            r = q[i] / p[i]
            if p[i] < 0:
                u1 = max(u1, r)
            else:
                u2 = min(u2, r)
    if u1 > u2:
        return None
    return (Coords(x1 + u1 * dx, y1 + u1 * dy), Coords(x1 + u2 * dx, y1 + u2 * dy))


def clip_line(
    p1: Coords[float],
    p2: Coords[float],
    clipper: Callable[..., Optional[Tuple[Coords[float], Coords[float]]]],
) -> Optional[Tuple[Coords[float], Coords[float]]]:
    """Clip a line to the window."""
    return clipper(p1, p2)


EdgeType = Tuple[Coords[float], Coords[float]]


class Edge:
    TOP: EdgeType = (Coords(-1, 1), Coords(1, 1))
    RIGHT: EdgeType = (Coords(1, 1), Coords(1, -1))
    BOTTOM: EdgeType = (Coords(1, -1), Coords(-1, -1))
    LEFT: EdgeType = (Coords(-1, -1), Coords(-1, 1))


def sutherland_hodgeman_clip(
    polygon: List[Coords[float]],
) -> Optional[List[Coords[float]]]:
    """Sutherland-Hodgeman polygon clipping algorithm."""
    # https://en.wikipedia.org/wiki/Sutherland%E2%80%93Hodgman_algorithm
    def inside(p: Coords[float], edge: Tuple[Coords[float], Coords[float]]) -> bool:
        match edge:
            case Edge.LEFT:
                return p.x >= -1
            case Edge.RIGHT:
                return p.x <= 1
            case Edge.TOP:
                return p.y <= 1
            case Edge.BOTTOM:
                return p.y >= -1
            case _:
                raise ValueError("Invalid edge")

    def intersect_edge(
        p1: Coords[float], p2: Coords[float], edge: Tuple[Coords[float], Coords[float]]
    ) -> Coords[float]:
        """Find the intersection of a line and an edge."""
        # find which point is inside the edge
        outside = p1
        if inside(p1, edge):
            outside = p2
        # find the intersection of the line and the edge
        x1, y1 = p1.x, p1.y
        x2, y2 = p2.x, p2.y
        x3, y3 = edge[0].x, edge[0].y
        x4, y4 = edge[1].x, edge[1].y
        denom = (x1 - x2) * (y3 - y4) - (y1 - y2) * (x3 - x4)
        # should never happen, as we know the edge is not parallel to the line
        if denom == 0:
            raise ValueError("Parallel lines")
        x = ((x1 * y2 - y1 * x2) * (x3 - x4) - (x1 - x2) * (x3 * y4 - y3 * x4)) / denom
        y = ((x1 * y2 - y1 * x2) * (y3 - y4) - (y1 - y2) * (x3 * y4 - y3 * x4)) / denom
        return Coords(x, y)

    def clip_edge(
        polygon: List[Coords[float]], edge: Tuple[Coords[float], Coords[float]]
    ) -> List[Coords[float]]:
        output = []
        p1 = polygon[-1]
        for p2 in polygon:
            if inside(p2, edge):
                if not inside(p1, edge):
                    output.append(intersect_edge(p1, p2, edge))
                output.append(p2)
            elif inside(p1, edge):
                output.append(intersect_edge(p1, p2, edge))
            p1 = p2
        return output

    edges = [Edge.LEFT, Edge.RIGHT, Edge.TOP, Edge.BOTTOM]
    for edge in edges:
        polygon = clip_edge(polygon, edge)
        if not polygon:
            return None
    return polygon


def clip_curve(
    curve: List[Coords[float]],
    clipper: Callable[..., Optional[Tuple[Coords[float], Coords[float]]]],
) -> Optional[List[Coords[float]]]:
    """Clip a curve to the window."""
    clipped_curve = []
    for a, b in zip(curve, curve[1:]):
        if find_outcode(a) == OutCode.INSIDE and find_outcode(b) == OutCode.INSIDE:
            clipped_curve.append(a)
            clipped_curve.append(b)
            continue
        clipped = clip_line(a, b, clipper)
        if clipped is None:
            continue
        clipped_curve.append(clipped[0])
        clipped_curve.append(clipped[1])
    if not clipped_curve:
        return None
    return clipped_curve
