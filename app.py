#!/usr/bin/python

from flask import Flask
from subprocess import call

app = Flask(__name__)


@app.route('/')
def hello_world():
    call(["/bin/bash", "test.sh"])
    return ""


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=9000)
