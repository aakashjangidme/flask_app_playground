#This bluepint will deal with all api management functionality 

from flask import Blueprint

api_blueprint = Blueprint('api', __name__)

from . import views