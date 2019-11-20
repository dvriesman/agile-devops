from flask import Flask
from flask import jsonify
from flask_cors import CORS
import os

app = Flask(__name__)
cors = CORS(app, resources={r"/*": {"origins": "*"}})

@app.route('/info')
def getInfo():
    name = os.environ.get("APP_NAME")
    color = os.environ.get('APP_COLOR')

    result = {"color":color, "name":name}

    return jsonify(result)
    
if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0',port=9090)




