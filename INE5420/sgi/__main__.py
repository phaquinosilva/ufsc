from sgi.app.main_window import ApplicationController


def main() -> None:
    controller = ApplicationController()
    controller.start_app()


if __name__ == "__main__":
    main()
