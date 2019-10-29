from flask import Flask
from flask import render_template
from flask import jsonify
from flask_cors import CORS
import os

app = Flask(__name__)
cors = CORS(app, resources={r"/*": {"origins": "*"}})

name = os.environ.get("APP_NAME")
color = os.environ.get('APP_COLOR')

@app.route('/')
def root():
    app.logger.info('No metodo root')

    return render_template('hello.html', color=color, name=name)
    
if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0',port=9090)
