from flask import Flask
from flask import jsonify
from flask_cors import CORS

app = Flask(__name__)
cors = CORS(app, resources={r"/*": {"origins": "*"}})

@app.route('/xapi/hello')
def hello_world():
    app.logger.info('No metodo hello_word - v2')
    return jsonify({'message':'May the force be with you - Version 2.0'})

if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0', port=80)
