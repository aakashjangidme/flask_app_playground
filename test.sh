#!/usr/bin/env bash

export WTF_CSRF_SECRET_KEY=1234
export SECRET_KEY=1234567890
export FLASK_ENV=test

python -m pytest