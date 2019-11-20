from flask import Flask
from flask import render_template
from flask import jsonify
from flask_cors import CORS
import requests 
import os

app = Flask(__name__)
cors = CORS(app, resources={r"/*": {"origins": "*"}})


@app.route('/')
def root():
    app.logger.info('No metodo root')

    appservicename = os.environ.get("APP_SERVICENAME")

    URL = "http://" + appservicename + "/info"

    print URL
    r = requests.get(url = URL) 

    print r

    data = r.json() 

    print data


    return render_template('hello.html', color=data["color"], name=data["name"])
    
if __name__ == '__main__':
    app.run(debug=True,host='0.0.0.0',port=9091)

  
  


