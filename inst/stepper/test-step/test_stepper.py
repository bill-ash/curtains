import time 
import board
from adafruit_motorkit import MotorKit 

kit = MotorKit()

while True: 
    for i in range(100): 
        kit.stepper1.onestep()
        time.sleep(0.01)
        print('one step')
