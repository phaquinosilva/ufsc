import tkinter as tk
from tkinter import ttk
from tkinter.colorchooser import askcolor
from tkinter.messagebox import askretrycancel, showinfo
from typing import List, Optional, Tuple

import numpy as np
from numpy.typing import NDArray

from sgi.graphics import Coords, Object2D, Point
from sgi.transforms import (
    rotate,
    rotate_arbitrary,
    rotate_obj_center,
    scale_natural,
    transform_obj,
    translate,
)


def center_screen(
    root: tk.Toplevel | tk.Tk, window_width: float, window_height: float
) -> None:
    """Helper to center and scale new windows"""
    # get the screen dimensions
    screen_width = root.winfo_screenwidth()
    screen_height = root.winfo_screenheight()
    # find the center point
    center_x = int(screen_width / 2 - window_width / 2)
    center_y = int(screen_height / 2 - window_height / 2)
    root.geometry(f'{window_width}x{window_height}+{center_x}+{center_y}')


class ObjectWindow:
    """Pop-up window for inclusion of objects"""

    def __init__(self, master: tk.Tk) -> None:
        self.top = tk.Toplevel(master)
        window_size = 300, 250
        center_screen(self.top, *window_size)

        self.coords: Optional[List[Coords]] = None
        self.name: Optional[str] = None
        self.color: Tuple[Optional[str], ...] = (None, None)

        self.top.title("Adicionar objeto")

        self.tab_control = ttk.Notebook(self.top)
        self.tab_control.pack(expand=True, fill=tk.BOTH, padx=5, pady=5)
        self.tab1 = ttk.Frame(self.tab_control)
        self.tab2 = ttk.Frame(self.tab_control)

        self.tab_control.add(self.tab1, text='Objeto 2D')
        self.tab_control.add(self.tab2, text='Curvas 2D')
        self._add_obj_frame()
        self._add_curve_frame()

        frame = tk.Frame(self.top)
        frame.pack(fill=tk.BOTH)
        btn = tk.Button(frame, text="Adicionar objeto", command=self.submit)
        btn.pack(side=tk.RIGHT, padx=5, pady=5, expand=True, fill=tk.BOTH)
        self.top.bind('<Return>', lambda _: self.submit())

        btn2 = tk.Button(frame, text="Cancelar", command=self.top.destroy, width=12)
        btn2.pack(side=tk.LEFT, padx=5, pady=5, fill=tk.BOTH, expand=True)
        self.type = ""

    def _add_curve_frame(self) -> None:
        btn_frame = tk.Frame(self.tab2)
        btn_frame.pack(fill=tk.X, expand=True)
        type_label = tk.Label(btn_frame, text="Tipo de curva:")
        type_label.pack(side=tk.LEFT, padx=5, pady=5)
        self.curve_type_var = tk.StringVar(value="bezier")
        bezier_btn = tk.Radiobutton(
            btn_frame,
            text="Bézier",
            variable=self.curve_type_var,
            value="bezier",
        )
        bezier_btn.select()
        bezier_btn.pack(fill=tk.X, padx=5, pady=5, side=tk.LEFT, expand=True)
        bspline_btn = tk.Radiobutton(
            btn_frame,
            text="B-Spline",
            variable=self.curve_type_var,
            value="bspline",
        )
        bspline_btn.pack(fill=tk.X, padx=5, pady=5, side=tk.RIGHT, expand=True)

        self.frame4 = tk.Frame(self.tab2)
        self.frame4.pack(fill=tk.X, expand=True)
        self.lbl4 = tk.Label(self.frame4, text="Nome", width=12)
        self.lbl4.pack(side=tk.LEFT, padx=5, pady=10)
        self.name_entry = tk.Entry(self.frame4)
        self.name_entry.pack(fill=tk.X, padx=5, expand=True)

        self.frame5 = tk.Frame(self.tab2)
        self.frame5.pack(fill=tk.X)
        self.lbl5 = tk.Label(self.frame5, text="Pontos \nde Controle", width=12)
        self.lbl5.pack(side=tk.LEFT, padx=5, pady=10)
        self.control_pts_entry = tk.Entry(self.frame5)
        self.control_pts_entry.pack(fill=tk.X, padx=5, expand=True)

        self.frame6 = tk.Frame(self.tab2)
        self.frame6.pack(fill=tk.BOTH)
        self.color = (None, None)

        def _choose_color():
            self.color = askcolor(title="Escolha uma cor")

        self.clr = tk.Button(self.frame6, text="Cor", command=_choose_color, width=12)
        self.clr.pack(side=tk.RIGHT, padx=5, pady=10)

        frame = tk.Frame(self.frame6)
        frame.pack(fill=tk.BOTH, side=tk.LEFT)
        lbl6 = tk.Label(frame, text="No. pontos:", width=12)
        lbl6.pack(fill=tk.BOTH, side=tk.LEFT, padx=5, pady=10)
        self.n_points_entry = tk.Entry(
            frame,
        )
        self.n_points_entry.insert(0, "100")
        self.n_points_entry.pack(fill=tk.X, side=tk.RIGHT, padx=5, expand=True)

    def _add_obj_frame(self) -> None:
        self.frame1 = tk.Frame(self.tab1)
        self.frame1.pack(fill=tk.X, expand=True)
        self.lbl1 = tk.Label(self.frame1, text="Nome", width=12)
        self.lbl1.pack(side=tk.LEFT, padx=5, pady=10)
        self.entry1 = tk.Entry(self.frame1)
        self.entry1.pack(fill=tk.X, padx=5, expand=True)

        self.frame2 = tk.Frame(self.tab1)
        self.frame2.pack(fill=tk.X)
        self.lbl2 = tk.Label(self.frame2, text="Coordenadas", width=12)
        self.lbl2.pack(side=tk.LEFT, padx=5, pady=10)
        self.coords_entry = tk.Entry(self.frame2)
        self.coords_entry.pack(fill=tk.X, padx=5, expand=True)

        self.frame3 = tk.Frame(self.tab1)
        self.frame3.pack(fill=tk.BOTH)
        self.color = (None, None)

        def _choose_color():
            self.color = askcolor(title="Escolha uma cor")

        self.clr = tk.Button(self.frame3, text="Cor", command=_choose_color)
        self.clr.pack(side=tk.LEFT, padx=5, pady=10, expand=True, fill=tk.BOTH)
        self.check_fill = tk.BooleanVar()
        check = tk.Checkbutton(self.frame3, text="Preenchido", variable=self.check_fill)
        check.pack(side=tk.LEFT, padx=5, pady=10, expand=True, fill=tk.BOTH)

    def submit(self) -> None:
        if self.tab_control.index(self.tab_control.select()) == 0:
            self.type = "obj"
            self._submit_obj()
        else:
            self.type = "curve"
            self._submit_curve()
        if self.coords:
            self.top.destroy()

    def _submit_curve(self) -> None:
        self.name = self.name_entry.get()
        self.num_points = int(self.n_points_entry.get())
        control_points: List[Coords[float]] = self._parse(self.control_pts_entry.get())
        self.curve_type: str = str(self.curve_type_var.get())
        if self.curve_type == "bezier" and len(control_points) % 4 != 0:
            showinfo(
                title="Número de pontos inválido!",
                message="O número de pontos de controle deve multiplo de 4.",
            )
            return
        if self.curve_type == "bspline" and len(control_points) < 4:
            showinfo(
                title="Número de pontos inválido!",
                message="O número de pontos de controle deve ser pelo menos 4.",
            )
            return
        self.coords = control_points

    def _submit_obj(self) -> None:
        self.name = self.entry1.get()
        self.coords = self._parse(self.coords_entry.get())
        self.fill = self.check_fill.get()

    def _parse(self, entry: str) -> List[Coords[float]]:
        if not entry:
            showinfo(
                title="Não há coordenadas!",
                message="Por favor, insira coordenadas para serem adicionadas.",
            )
            return []
        try:
            # TODO: Replace with decent parsing, e.g. regex.
            coords = [Coords(x, y) for x, y in eval(f"[{entry}]")]
        except Exception:
            showinfo(
                title="Coordenadas inválidas!",
                message="As coordenadas não estão no formato correto. Tente novamente.",
            )
            return []
        return coords


class TransformWindow:
    """Pop-up window for 2D transformations of objects"""

    def __init__(self, master: tk.Tk, obj: Object2D) -> None:
        self.top = tk.Toplevel(master)
        window_size = 450, 280
        center_screen(self.top, *window_size)

        self.obj = obj
        self.transforms: List[NDArray] = []
        self.transformed_obj: Optional[Object2D] = None

        self.top.title("Transformações")
        self.tab_control = ttk.Notebook(self.top)
        self.tab_control.grid(row=0, column=0, rowspan=3, sticky='nwes', padx=5, pady=5)
        self._create_translation_frame()
        self._create_rotation_frame()
        self._create_scale_frame()

        self.add_btn = tk.Button(
            self.top, text="Adicionar", command=self._add_transform
        )
        self.add_btn.grid(row=0, column=1, sticky='nwe', padx=5, pady=5)

        self.lab = tk.Label(self.top, text="Lista de transformações")
        self.lab.grid(row=1, column=1, sticky='nwe', padx=5, pady=5)
        self.transforms_box = tk.Listbox(self.top)
        self.transforms_box.grid(row=2, column=1, sticky='swe', padx=5, pady=5)

        self.transform_btn = tk.Button(
            self.top, text="Aplicar transformações", command=self.submit
        )
        self.transform_btn.grid(
            row=3, column=0, columnspan=2, sticky='swe', padx=5, pady=5
        )

    def _create_translation_frame(self) -> None:
        self.translation_frame = tk.Frame(self.tab_control)
        self.tab_control.add(self.translation_frame, text="Translações")

        self.lb_dx = tk.Label(self.translation_frame, text="Deslocamento em X:")
        self.dx = tk.Entry(self.translation_frame)
        self.lb_dx.pack(padx=5, pady=5, fill=tk.X, expand=1)
        self.dx.pack(padx=5, pady=5, fill=tk.X, expand=1)

        self.lb_dy = tk.Label(self.translation_frame, text="Deslocamento em Y:")
        self.dy = tk.Entry(self.translation_frame)
        self.lb_dy.pack(padx=5, pady=5, fill=tk.X, expand=1)
        self.dy.pack(padx=5, pady=5, fill=tk.X, expand=1)

    def _create_scale_frame(self) -> None:
        self.scale_frame = tk.Frame(self.tab_control)
        self.tab_control.add(self.scale_frame, text="Escalonamentos")

        self.lb_sx = tk.Label(self.scale_frame, text="Fator em X:")
        self.sx = tk.Entry(self.scale_frame)
        self.lb_sx.pack(padx=5, pady=5, fill=tk.X, expand=1)
        self.sx.pack(padx=5, pady=5, fill=tk.X, expand=1)

        self.lb_sy = tk.Label(self.scale_frame, text="Fator em Y:")
        self.sy = tk.Entry(self.scale_frame)
        self.lb_sy.pack(padx=5, pady=5, fill=tk.X, expand=1)
        self.sy.pack(padx=5, pady=5, fill=tk.X, expand=1)

    def _create_rotation_frame(self) -> None:
        self.rotation_frame = tk.Frame(self.tab_control)
        self.tab_control.add(self.rotation_frame, text="Rotações")

        self.opt_frame = tk.LabelFrame(self.rotation_frame, text="Opções de rotação")
        self.opt_frame.pack(padx=5, pady=5, fill=tk.BOTH, expand=1)
        self.rotation = tk.StringVar()
        self.r_origin = tk.Radiobutton(
            self.opt_frame,
            text="Rotacionar sobre a origem",
            variable=self.rotation,
            value=0,
        )
        self.r_origin.pack(padx=5, pady=5, fill=tk.BOTH, expand=1)
        self.r_point = tk.Radiobutton(
            self.opt_frame,
            text="Rotacionar sobre um ponto",
            variable=self.rotation,
            value=1,
        )
        self.r_point.pack(padx=5, pady=5, fill=tk.BOTH, expand=1)
        self.r_center = tk.Radiobutton(
            self.opt_frame,
            text="Rotacionar sobre o centro do objeto",
            variable=self.rotation,
            value=2,
        )
        self.r_center.pack(padx=5, pady=5, fill=tk.BOTH, expand=1)

        self.frame1 = tk.Frame(self.rotation_frame)
        self.frame1.pack(fill=tk.X)
        self.angle_lbl = tk.Label(self.frame1, text="Ângulo (em graus)")
        self.angle = tk.Entry(self.frame1)
        self.angle_lbl.pack(side=tk.LEFT, padx=5, pady=10)
        self.angle.pack(padx=5, pady=5, fill=tk.X, expand=True)

        self.frame2 = tk.Frame(self.rotation_frame)
        self.frame2.pack(fill=tk.X)
        self.lbl1 = tk.Label(self.frame2, text="Centro", width=12)
        self.lbl1.pack(side=tk.LEFT, padx=5, pady=10)
        self.rot_center = tk.Entry(self.frame2)
        self.rot_center.pack(fill=tk.X, padx=5, expand=True)

    def _add_transform(self):
        def _handle_translate():
            dy = self.dy.get()
            dx = self.dx.get()
            if not dy or not dx:
                askretrycancel(
                    title="Erro!", message="Insira o fator de escala para X ou Y."
                )
                return
            name = f'translate dx={dx}, dy={dy}'
            self.transforms.append(translate(float(dx), float(dy)))
            self.transforms_box.insert(tk.END, name)

        def _handle_rotate():
            if not (angle := self.angle.get()):
                askretrycancel(title="Erro!", message="Insira o ângulo de rotação.")
                return
            try:
                angle = np.radians(float(angle))
            except ValueError:
                askretrycancel(title="Erro!", message="Insira um ângulo válido.")
                return
            rot_type = int(self.rotation.get())
            if rot_type == 0:
                name = f'rotate origin, angle={angle}'
                t = rotate(angle)
            elif rot_type == 1:
                center = self.rot_center.get()
                try:
                    center = eval(f"{center}")
                except Exception:
                    showinfo(
                        title="Erro!",
                        message="O centro de rotação está mal formatado. Tente novamente!",
                    )
                    return
                name = f'rotate {center}, angle={angle}'
                t = rotate_arbitrary(Coords(*center), angle)
            else:
                name = f'rotate object center, angle={angle}'
                t = rotate_obj_center(self.obj, angle)
            self.transforms.append(t)
            self.transforms_box.insert(tk.END, name)

        def _handle_scale():
            if isinstance(self.obj, Point):
                showinfo(title="Erro!", message="Não é possível escalonar um ponto!")
                return
            sy = self.sy.get()
            sx = self.sx.get()
            if not sy or not sx:
                askretrycancel(
                    title="Erro!", message="Insira o fator de escala para X ou Y."
                )
                return
            name = f'scale sx={sx}, dy={sy}'
            self.transforms.append(scale_natural(self.obj, float(sx), float(sy)))
            self.transforms_box.insert(tk.END, name)

        tab_id = self.tab_control.index('current')
        if tab_id == 0:  # translação
            _handle_translate()
        elif tab_id == 1:  # rotation
            _handle_rotate()
        else:
            _handle_scale()

    def submit(self):
        if not self.transforms:
            showinfo(title="Oops!", message="Não há transformação a ser feita")
            return
        self.transformed_obj = transform_obj(self.obj, self.transforms)
        self.top.destroy()
