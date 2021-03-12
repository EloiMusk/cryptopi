import time
import RPi.GPIO as GPIO
from rencoder import Encoder

def valueChanged(value):
    print("* New value: {}".format(value))

e1 = Encoder(16, 18, valueChanged)

try:
    while True:
        time.sleep(5)
        print("Value is {}".format(e1.getValue()))
except Exception:
    pass

GPIO.cleanup()