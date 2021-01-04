# import board
from flask import Flask
from adafruit_motorkit import MotorKit
from adafruit_motor import stepper
import time 

kit = MotorKit()

app = Flask(__name__)

@app.route('/open')
def open_curtains(): 
    for i in range(10000):
        kit.stepper1.onestep(direction=stepper.FORWARD, style=stepper.INTERLEAVE) 
        time.sleep(0.01)
        
    return 'Curtains opened!'
  
@app.route('/close') 
def close_curtains(): 
    for i in range(10000):
        kit.stepper1.onestep(direction=stepper.BACKWARD, style=stepper.INTERLEAVE)
        time.sleep(0.01)
        
    return 'Curtains closed!'

if __name__ == '__main__': 
    app.run(host='0.0.0.0')