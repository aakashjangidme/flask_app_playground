from app import create_app


if __name__ == '__main__':
    application = create_app()
    application.run()
else:
    gunicorn_app = create_app()


# gunicorn --bind 127.0.0.1:5000 application:gunicorn_app