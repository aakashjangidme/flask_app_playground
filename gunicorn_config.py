
bind = '0.0.0.0:8000'  # Specify the host and port for Gunicorn to bind to
workers = 4  # --   The number of worker processes //multiprocessing.cpu_count() * 2 + 1
threads = 2  # The number of threads per worker
timeout = 120  # The maximum time a worker can take to respond before being killed
loglevel = 'info'  # The log level (debug, info, warning, error, critical)
