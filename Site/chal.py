from flask import Flask, request 

app = Flask(__name__) 
@app.route('/') 
def index():
    f = request.args.get('animal','chal.py') 

if __name__=="__main__":
    app.run(host='0.0.0.0', debug=True)

