# Sample service

import os
import flask
from werkzeug.serving import make_server
import threading

PORT = os.environ.get("FC_APP_PORT") or "5000"
VERSION = os.environ.get("FC_APP_VERSION") or "1.0"
LIFESPAN = os.environ.get("FC_APP_LIFESPAN") or None


class ServerThread(threading.Thread):

    def __init__(self, app):
        threading.Thread.__init__(self)
        self.srv = make_server('0.0.0.0', int(PORT), app)
        self.ctx = app.app_context()
        self.ctx.push()

    def run(self):
        self.srv.serve_forever()

    def shutdown(self):
        self.srv.shutdown()


app = flask.Flask(__name__)
app.config["DEBUG"] = True

server = ServerThread(app)
server.start()


@app.route('/', methods=['GET'])
def home():
    return "<h1>Service v%s</h1>" % VERSION


def terminate():
    print("Lifespan exceeded. Shuting down.")
    server.shutdown()
    

if LIFESPAN:
    print("WARNING: The server will stop after %s seconds." % LIFESPAN)
    timer = threading.Timer(float(LIFESPAN), terminate)
    timer.start()








    


    
    
