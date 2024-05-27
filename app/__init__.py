import glob
import os
import json
import argparse
from flask import Flask,request,jsonify,Response


def create_app():
    """Create and configure the app"""
    app = Flask(__name__, instance_relative_config=True)
    
    
    @app.route('/')
    def index():
        return 'Hello, world!'
    return app