#!/bin/sh

# Gunicorn 'Green Unicorn' is a Python WSGI HTTP Server for UNIX. 
# It's a pre-fork worker model. 
# The Gunicorn server is broadly compatible and simply implemented.
# Its light on server resources, and fairly speedy.

# Here we will be spinning up multiple threads with multiple worker processess(-w) and perform a binding.

# gunicorn --workers 8 --bind 0.0.0.0:5000 application:gunicorn_app --max-requests 10000 --timeout 5 --keep-alive 5 --log-level info


gunicorn -c gunicorn_config.py application:gunicorn_app
