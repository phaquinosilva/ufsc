"""
This module contains functions for reading and writing OBJ files.
"""

from dataclasses import replace
from typing import List, Optional, Tuple

from sgi.data2d import (
    BezierCurve,
    BSplineCurve,
    Coords,
    Line,
    Object2D,
    Point,
    Wireframe,
)
from sgi.graphics import DisplayFile, Window


def _obj_description(
    obj: Object2D, index: int
) -> Tuple[List[str], List[str], List[str], int]:
    """
    Generate description of an object in OBJ format.

    :param obj:
        object to be described.
    :param index:
        index of first vertex in object.
    :return:
        tuple of (info, vertices, mtl, index) where:
            info: list of lines describing object
            vertices: list of lines describing vertices
            mtl: list of lines describing material
            index: index of next vertex
    """
    name = obj.name.replace(" ", "_")
    info = [
        f"o {name}\n",
        f"usemtl {name}\n",
    ]
    vertices: List[str] = []
    # convert color from hex to normalized rgb
    color = tuple(int(obj.color[i : i + 2], 16) / 255 for i in (1, 3, 5))
    mtl = [
        f"newmtl {name}\n",
        f"Kd {color[0]:.3f} {color[1]:.3f} {color[2]:.3f}\n",
    ]

    match obj:
        case Point(pos):
            vertices.append(f"v {pos.x} {pos.y} 0.0\n")
            info.append(f"p {index}\n")
            index += 1
        case Line(endpoints):
            vertices.extend(f"v {v.x} {v.y} 0.0\n" for v in endpoints)
            info.append(f"l {index} {index + 1}\n")
            index += len(endpoints)
        case Wireframe(vs):
            vertices.extend(f"v {v.x} {v.y} 0.0\n" for v in vs)
            info.append(
                f"{'f' if obj.fill else 'l'} {' '.join(str(i) for i in range(index, index + len(vs)))}\n"
            )
            index += len(vs)
        case BezierCurve(control_points):
            vertices.extend(f"v {v.x} {v.y} 0.0\n" for v in control_points)
            info.extend(
                [
                    "cstype rat bezier\n",
                    f"curv2 {' '.join(str(i) for i in range(index, index + len(control_points)))}\n",
                    # TODO: check if this 'parm' is correct
                    f"parm u {' '.join(str(i) for i in range(index, index + len(control_points)))}\n",
                    f"sp {index + 1} {index + 2}\n",
                    "end\n",
                ]
            )
            index += len(control_points)
        case BSplineCurve(control_points):
            vertices.extend(f"v {v.x} {v.y} 0.0\n" for v in control_points)
            info.extend(
                [
                    "cstype rat bspline\n" f"degree 3\n",
                    f"curv2 {' '.join(str(i) for i in range(index, index + len(control_points)))}\n",
                    # TODO: check if this 'parm' is correct
                    f"parm u {' '.join(str(i) for i in range(index, index + len(control_points)))}\n",
                    "end\n",
                ]
            )
            index += len(control_points)
    return vertices, info, mtl, index


def _window_description(w: Window) -> Tuple[List[str], List[str]]:
    """Create a wavefront obj file from a window."""
    v = [f"v {w.min.x} {w.min.y} 0.0\n", f"v {w.max.x} {w.max.y} 0.0\n"]
    i = [f"o window\n", f"w 1 2\n"]
    return v, i


def create_obj_file(display_file: DisplayFile, filename: str) -> None:
    """
    Create a wavefront obj file from a DisplayFile object.

    :param display_file:
        The display file to convert.
    :param filename:
        The name of the file to write to.
    """
    if not display_file.objects:
        raise ValueError("No objects to write to file.")

    # Describe window first
    vertices, info = _window_description(display_file.window)
    mtl = []
    index = 3

    # Describe objects
    for obj in display_file.objects.values():
        v, i, m, index = _obj_description(obj, index)
        vertices.extend(v)
        info.extend(i)
        mtl.extend(m)

    # Write obj file
    with open(filename, "w") as f:
        f.write("# Created by sgi\n")
        f.write(f"mtllib {filename[:-4]}.mtl\n")
        for _v in vertices:
            f.write(_v)
        for _i in info:
            f.write(_i)

    # Write materials file
    with open(f"{filename[:-4]}.mtl", "a") as f:
        f.write("# Created by sgi\n")
        for _m in mtl:
            f.write(_m)


# TODO: This was horrible to write, it needs to be rewritten to
# improve readability and performance. It is also not thoroulghly
# tested, so it might not work. Use at your own risk.
def load_obj_file(filename: str, display_file: DisplayFile) -> DisplayFile:
    """
    Read a wavefront obj file and return a display file.

    :param filename:
        The name of the file to read from.
    :return:
        The display file read from the file.
    """
    with open(filename, "r") as f:
        lines = f.readlines()

    # read mtl file
    for line in lines:
        if line.startswith("mtllib "):
            mtl_file = line[7:].strip()
            break
    else:
        raise ValueError("No mtl file specified.")

    # Read vertices
    vertices = [
        tuple(map(float, line[2:].split())) for line in lines if line.startswith("v ")
    ]
    vertices = [Coords(x, y) for x, y, _ in vertices]
    objects = []
    window: Optional[Window] = None
    for j, line in enumerate(lines):
        if line.startswith("w "):
            min, max = tuple(vertices[int(i) - 1] for i in line[2:].split())
            window = Window(min, max)
        if line.startswith("o "):
            obj_name = line[2:].strip()
        if line.startswith("usemtl "):
            color = _read_color_from_mtl_file(mtl_file, line[7:].strip())
        elif line.startswith("p "):
            v = (vertices[int(i) - 1] for i in line[2:].split())
            objects.append(Point(v[0], v[0], color=color, name=obj_name))
        elif line.startswith("l "):
            if len(line[2:].split()) == 2:
                endpoints = tuple(vertices[int(i) - 1] for i in line[2:].split())
                objects.append(Line(endpoints, endpoints, color=color, name=obj_name))
            else:
                vs = [vertices[int(i) - 1] for i in line[2:].split()]
                objects.append(
                    Wireframe(vs, vs, fill=False, color=color, name=obj_name)
                )
        elif line.startswith("f "):
            vs = [vertices[int(i) - 1] for i in line[2:].split()]
            objects.append(Wireframe(vs, vs, fill=True, color=color, name=obj_name))
        elif line.startswith("cstype "):
            if line.endswith("bezier\n"):
                assert lines[j + 1].startswith("curv2 ")
                control_points = [
                    vertices[int(i) - 1] for i in lines[j + 1][6:].split()
                ]
                objects.append(
                    BezierCurve(
                        control_points, control_points, color=color, name=obj_name
                    )
                )
            elif line.endswith("bspline\n"):
                assert lines[j + 2].startswith("curv2 ")
                control_points = [
                    vertices[int(i) - 1] for i in lines[j + 2][6:].split()
                ]
                objects.append(
                    BSplineCurve(
                        control_points, control_points, color=color, name=obj_name
                    )
                )
            else:
                raise ValueError("Unknown curve type")
    if not window:
        raise ValueError("No window found in file.")
    objects = {obj.name: obj for obj in objects}
    df = replace(display_file, window=window, objects=objects)
    df.update_normalized_coords()
    return df


def _read_color_from_mtl_file(filename: str, mtl: str) -> str:
    with open(filename, "r") as f:
        mtl_lines = f.readlines()
    for i, mtl_line in enumerate(mtl_lines):
        if mtl_line.startswith(f"newmtl ") and mtl in mtl_line.strip():
            color = mtl_lines[mtl_lines.index(mtl_line) + 1].strip()[3:]
            # Convert color from normalized rgb to hex code
            color = tuple(int(i * 255) for i in map(float, color.split(' ')))
            color = f"#{color[0]:02x}{color[1]:02x}{color[2]:02x}"
            break
    else:
        raise ValueError("No color found in mtl file.")
    return color
