
from . import api_blueprint

from flask import jsonify, current_app, abort


@api_blueprint.route('/')
def index():
    current_app.logger.info("Api loading")
    return jsonify(message="Hello World")


@api_blueprint.route('/admin')
def admin():
    abort(500)
