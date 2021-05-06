from flask import Flask, request 
import sys, uuid

app = Flask(__name__) 
@app.route('/') 
def index():
    modname = getattr(app, "__module__", app.__class__.__module__)
    mod = sys.modules.get(modname)

    f = request.args.get('animal','chal.py') 
    with open(f, 'r') as f: 
        return(f.read()+f" {str(uuid.getnode())}")

if __name__=="__main__":
    app.run(host='0.0.0.0', debug=True)

