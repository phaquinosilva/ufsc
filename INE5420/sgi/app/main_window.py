import tkinter as tk
from dataclasses import dataclass, field
from enum import Enum, auto
from tkinter import ttk
from tkinter.filedialog import askopenfilename, asksaveasfilename
from tkinter.messagebox import showinfo

import numpy as np

from sgi.app.obj_handler import create_obj_file, load_obj_file
from sgi.app.sub_window import ObjectWindow, TransformWindow, center_screen
from sgi.clipping import (
    clip_curve,
    clip_line,
    clip_point,
    cohen_sutherland_clip,
    liang_barsky_clip,
    sutherland_hodgeman_clip,
)
from sgi.data2d import BezierCurve, BSplineCurve, Coords, Line, Point, Wireframe
from sgi.graphics import DisplayFile, Viewport, Window

# TODO: It would be nice to improve the separation of GUI logic from the
# application logic. The GUI logic is currently spread across this file and
# the sub_windows.py file, but both files still have a lot of logic that
# should be moved to a separate file (e.g. the logic for managing the objects).


class Direction(Enum):
    UP = auto()
    DOWN = auto()
    LEFT = auto()
    RIGHT = auto()


@dataclass
class ApplicationController:
    root_widget: tk.Tk = field(default_factory=tk.Tk)
    graphics: DisplayFile = field(init=False)

    def __post_init__(self):
        self.viewport_size = 430, 430
        initial_window_size = 100.0, 100.0
        window_size = 700, 500

        self.graphics = DisplayFile(
            Viewport(*self.viewport_size),
            Window(Coords(0.0, 0.0), Coords(*initial_window_size)),
        )
        self.root_widget.title('Sistema Gráfico Interativo')
        self.root_widget.columnconfigure(0, weight=1)
        self.root_widget.columnconfigure(1, weight=3)
        center_screen(self.root_widget, *window_size)
        self._create_menu_bar()
        self._create_function_menu()
        self._create_window_menu()

        self._create_viewport_canvas(
            self.viewport_size[0] + 20, self.viewport_size[1] + 20
        )
        self._bind_events()
        self.clipper = cohen_sutherland_clip

    # tkinter stuff
    def _create_menu_bar(self) -> None:
        menu_bar = tk.Menu(self.root_widget)
        self.root_widget.config(menu=menu_bar)

        file_menu = tk.Menu(menu_bar, tearoff=0)
        menu_bar.add_cascade(label='Arquivo', menu=file_menu)
        menu_bar.add_command(label='Sair', command=self.root_widget.quit)
        self.filename = tk.StringVar()

        def load_file():
            for i in range(self.object_list.size()):
                self.object_list.delete(0, tk.END)
            try:
                self.filename.set(askopenfilename(filetypes=[('OBJ', '*.obj')]))
                self.graphics = load_obj_file(self.filename.get(), self.graphics)
            except Exception as e:
                print(e)
                showinfo(
                    'Sorry :(',
                    message='Reading Wavefront OBJ is currently experimental.',
                )
                return
            for obj in self.graphics.objects.keys():
                self.object_list.insert(tk.END, obj)
            self.draw_canvas()

        file_menu.add_command(label='Carregar', command=load_file)

        def save_file():
            try:
                self.filename.set(
                    asksaveasfilename(
                        defaultextension='.obj', filetypes=[('OBJ', '*.obj')]
                    )
                )
                create_obj_file(self.graphics, self.filename.get())
            except Exception:
                showinfo(
                    'Sorry :(',
                    message='Saving Wavefront OBJ is currently experimental.',
                )

        file_menu.add_command(label='Salvar', command=save_file)

    def _create_function_menu(self) -> None:
        self.function_menu = ttk.LabelFrame(self.root_widget, text='Menu de Funções')
        self.function_menu.grid(column=0, row=0, padx=10, pady=10, sticky='nwes')

        objs = tk.LabelFrame(self.function_menu, text='Objetos')
        objs.grid(column=0, columnspan=3, sticky='nwes', padx=5, pady=5)
        add_btn = tk.Button(
            objs,
            text='Adicionar',
            command=self.handle_add_object_event,
        )
        add_btn.grid(row=0, column=0, pady=5, padx=5, sticky='nwes')
        remove_btn = tk.Button(
            objs,
            text='Remover',
            command=self.handle_remove_object_event,
        )
        remove_btn.grid(row=0, column=1, pady=5, padx=5, sticky='nwes')
        self.object_list = tk.Listbox(objs, height=5, selectmode=tk.SINGLE)
        scroll = tk.Scrollbar(objs, orient=tk.VERTICAL)
        self.object_list.config(yscrollcommand=scroll.set)
        scroll.config(command=self.object_list.yview)
        scroll.grid(column=1, row=1, sticky='nse', padx=5)
        self.object_list.grid(column=0, columnspan=2, row=1, sticky='nwes', padx=5)

        transform_btn = tk.Button(
            objs,
            text='Transformações',
            command=self.handle_transform_obj_event,
        )
        transform_btn.grid(row=2, column=0, columnspan=2, pady=5, padx=5, sticky='nwes')

    def _create_viewport_canvas(self, width: int, height: int) -> None:
        lab = tk.LabelFrame(self.root_widget, text='Viewport')
        lab.grid(column=1, row=0, padx=10, pady=10, ipady=5, sticky='nwes')
        self.viewport_canvas = tk.Canvas(lab, bg='white', width=width, height=height)
        self.viewport_canvas.pack()
        self.viewport_canvas.create_rectangle(
            10, 10, width - 12, height - 12, outline='grey', width=1
        )

    def _create_window_menu(self) -> None:
        self.window_menu = ttk.LabelFrame(self.function_menu, text='Window')
        self.window_menu.grid(columnspan=2, rowspan=5, padx=5, pady=5, sticky='nwes')

        passo = tk.Label(self.window_menu, text='Passo: ')
        passo.grid(column=0, row=0, padx=5, pady=5, sticky='nwes')
        self.step = tk.Entry(self.window_menu, width=6)
        self.step.insert(tk.END, '10')
        self.step.grid(column=1, row=0, padx=5, pady=5, sticky='nwes')
        percent = tk.Label(self.window_menu, text='%')
        percent.grid(column=2, row=0, padx=5, pady=5, sticky='nwes')

        zoom = tk.Label(self.window_menu, text='Zoom:')
        zoom.grid(column=0, row=2, pady=5, padx=5, sticky='nwes')
        zoom_in_btn = tk.Button(
            self.window_menu,
            text='+',
            command=lambda: self.scale_render_window(-self._read_step()),
        )
        zoom_out_btn = tk.Button(
            self.window_menu,
            text='-',
            command=lambda: self.scale_render_window(self._read_step()),
        )
        zoom_in_btn.grid(row=2, column=1, pady=5, padx=5)
        zoom_out_btn.grid(row=2, column=2, pady=5, padx=5)

        angulo = tk.Label(self.window_menu, text='Ângulo: ')
        angulo.grid(column=0, row=3, padx=5, pady=5, sticky='nwes')
        self.angle = tk.Entry(self.window_menu, width=6)
        self.angle.insert(tk.END, '10')
        self.angle.grid(column=1, row=3, padx=5, pady=5, sticky='nwes')
        deg = tk.Label(self.window_menu, text='°')
        deg.grid(column=2, row=3, padx=5, pady=5, sticky='nwes')

        rotate_btn = tk.Button(
            self.window_menu,
            text='Rotacionar',
            command=lambda: self.rotate_window(self._read_angle()),
        )
        rotate_btn.grid(row=4, column=1, columnspan=2, pady=5, padx=5, sticky='nwes')

        reset_btn = tk.Button(
            self.window_menu,
            text='Resetar',
            command=self.reset_render_window,
        )
        reset_btn.grid(row=4, column=0, columnspan=1, pady=5, padx=5, sticky='nwes')
        clip_lab = tk.LabelFrame(self.window_menu, text='Clipping de linhas')
        clip_lab.grid(row=6, columnspan=3, padx=5, pady=5, sticky='nwes')
        self.clip_var = tk.IntVar()
        radio1 = tk.Radiobutton(
            clip_lab,
            text='Cohen-Sutherland',
            variable=self.clip_var,
            value=1,
            command=self.set_clip_method,
        )
        radio2 = tk.Radiobutton(
            clip_lab,
            text='Liang-Barsky',
            variable=self.clip_var,
            value=2,
            command=self.set_clip_method,
        )
        radio1.grid(row=7, column=0, padx=5, pady=5, sticky='nwes')
        radio2.grid(row=8, column=0, padx=5, pady=5, sticky='nwes')
        radio1.select()

    def _bind_events(self) -> None:
        self.root_widget.bind("<Shift-A>", lambda _: self.handle_add_object_event())
        self.root_widget.bind("<Up>", lambda _: self.move_render_window(Direction.UP))
        self.root_widget.bind(
            "<Down>", lambda _: self.move_render_window(Direction.DOWN)
        )
        self.root_widget.bind(
            "<Left>", lambda _: self.move_render_window(Direction.LEFT)
        )
        self.root_widget.bind(
            "<Right>", lambda _: self.move_render_window(Direction.RIGHT)
        )
        self.root_widget.bind("<Control-r>", lambda _: self.reset_render_window())
        self.root_widget.bind(
            "<Control-equal>", lambda _: self.scale_render_window(-self._read_step())
        )
        self.root_widget.bind(
            "<Control-minus>", lambda _: self.scale_render_window(self._read_step())
        )

    def _read_step(self) -> float:
        return float(step) / 100 if (step := self.step.get()) else 0.1

    def _read_angle(self) -> float:
        return np.radians(float(self.angle.get()))

    def start_app(self) -> None:
        self.root_widget.mainloop()

    # OBJECTS UTILITIES
    def handle_add_object_event(self) -> None:
        add_obj_win = ObjectWindow(self.root_widget)
        self.root_widget.wait_window(add_obj_win.top)
        if not add_obj_win.type:
            return
        if add_obj_win.type == 'obj':
            # If the coords field is empty (add_obj_win.coords==None),
            # no object was given.
            if not add_obj_win.coords:
                return
            # If the name field is empty (add_obj_win.name==None),
            # name will be updated to a default value
            name = self.graphics.add_obj(
                coords=add_obj_win.coords,
                color=add_obj_win.color[-1],
                name=add_obj_win.name,
                fill=add_obj_win.fill,
            )
        elif add_obj_win.type == 'curve':
            if not add_obj_win.coords:
                return
            name = self.graphics.add_curve(
                coords=add_obj_win.coords,
                n_points=add_obj_win.num_points,
                color=add_obj_win.color[-1],
                name=add_obj_win.name,
                type=add_obj_win.curve_type,
            )
        self.object_list.insert(tk.END, name)

        self.draw_canvas()
        print("Add object")

    def handle_remove_object_event(self) -> None:
        if not self.object_list.curselection():
            return
        name = self.object_list.get(self.object_list.curselection())
        self.graphics.objects.pop(name)
        self.object_list.delete(self.object_list.curselection())
        self.draw_canvas()
        print("Remove object")

    def handle_transform_obj_event(self) -> None:
        if not (i := self.object_list.curselection()):
            showinfo(
                title='Oops!',
                message="Nenhum objeto foi escolhido! \
                    Escolha um objeto na lista e tente novamente.",
            )
            return

        obj = str(self.object_list.get(i))
        print(f"Transformation: object {obj}")
        transform_win = TransformWindow(self.root_widget, self.graphics.objects[obj])
        self.root_widget.wait_window(transform_win.top)
        if transform_win.transformed_obj:
            self.graphics.update_obj_normalized_coords(transform_win.transformed_obj)
            self.graphics.objects[obj] = transform_win.transformed_obj
            self.draw_canvas()

    def draw_canvas(self) -> None:
        """Redraw all canvas objects (without clipping)"""
        self.viewport_canvas.delete("all")
        width, height = (
            self.viewport_canvas.winfo_width(),
            self.viewport_canvas.winfo_height(),
        )
        self.viewport_canvas.create_rectangle(
            10, 10, width - 12, height - 12, outline='grey', width=1
        )

        def _draw_point(point: Point) -> None:
            if not clip_point(point.n_pos):
                return
            p = self.graphics.viewport_transform(point.n_pos)
            self.viewport_canvas.create_oval(
                p.x - 1, p.y - 1, p.x + 1, p.y + 1, fill=point.color
            )

        def _draw_line(line: Line) -> None:
            endpoints = clip_line(*line.n_endpoints, self.clipper)
            if not endpoints:
                return
            a, b = (self.graphics.viewport_transform(c) for c in endpoints)
            self.viewport_canvas.create_line(a.x, a.y, b.x, b.y, fill=line.color)

        def _draw_wireframe(wireframe: Wireframe) -> None:
            clipped_wireframe = sutherland_hodgeman_clip(wireframe.n_vertices)
            if not clipped_wireframe:
                return
            vertices = [self.graphics.viewport_transform(c) for c in clipped_wireframe]
            if wireframe.fill:
                # Could not find a way to fill a "polygon" drawn with lines, so I'm
                # drawing a polygon the right way instead.
                self.viewport_canvas.create_polygon(
                    list((v.x, v.y) for v in vertices), fill=wireframe.color
                )
            else:
                # When not filling, simply draw lines between vertices
                for a, b in zip(vertices, vertices[1:] + vertices[:1]):
                    self.viewport_canvas.create_line(
                        a.x, a.y, b.x, b.y, fill=wireframe.color
                    )

        def _draw_bezier_curve(curve: BezierCurve) -> None:
            clipped_curve = clip_curve(curve.n_curve, self.clipper)
            if not clipped_curve:
                return
            vertices = [self.graphics.viewport_transform(c) for c in clipped_curve]
            for a, b in zip(vertices, vertices[1:]):
                self.viewport_canvas.create_line(a.x, a.y, b.x, b.y, fill=curve.color)

        def _draw_bspline_curve(curve: BSplineCurve) -> None:
            clipped_curve = clip_curve(curve.n_curve, self.clipper)
            if not clipped_curve:
                return
            vertices = [self.graphics.viewport_transform(c) for c in clipped_curve]
            for a, b in zip(vertices, vertices[1:]):
                self.viewport_canvas.create_line(a.x, a.y, b.x, b.y, fill=curve.color)

        for obj in self.graphics.objects.values():
            match obj:
                case Point(_) as p:
                    _draw_point(p)
                case Line(_) as l:
                    _draw_line(l)
                case Wireframe(_) as w:
                    _draw_wireframe(w)
                case BezierCurve(_) as c:
                    _draw_bezier_curve(c)
                case BSplineCurve(_) as c:
                    _draw_bspline_curve(c)
                case _:
                    raise TypeError(f"Invalid object type: {type(obj)}")
        self.viewport_canvas.pack()

    # WINDOW UTILITIES
    def move_render_window(self, direction: Direction) -> None:
        delta = 10.0 * self._read_step()
        match direction:
            case Direction.UP:
                self.graphics.window.shift_y(delta)
            case Direction.DOWN:
                self.graphics.window.shift_y(-delta)
            case Direction.LEFT:
                self.graphics.window.shift_x(-delta)
            case Direction.RIGHT:
                self.graphics.window.shift_x(delta)
        self.graphics.update_normalized_coords()
        self.draw_canvas()
        print(f"Move window: {direction}, new center: {self.graphics.window.wc}")

    def scale_render_window(self, factor: float) -> None:
        self.graphics.window.scale(factor)
        self.graphics.update_normalized_coords()
        self.draw_canvas()
        print(f"Scale window: {self.graphics.window.scaling_factor}x")

    def reset_render_window(self) -> None:
        self.graphics.window.reset()
        self.graphics.update_normalized_coords()
        self.draw_canvas()
        print("Reset window")

    def rotate_window(self, angle) -> None:
        self.graphics.window.rotate(angle)
        self.graphics.update_normalized_coords()
        self.draw_canvas()
        print(f"Rotate window: {self.graphics.window.vup_angle} radians")

    def set_clip_method(self) -> None:
        self.clipper = (
            cohen_sutherland_clip if self.clip_var.get() == 1 else liang_barsky_clip
        )
        print("Changed clipping method: ", self.clipper.__name__)
        self.draw_canvas()
