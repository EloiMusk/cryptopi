import time
import RPi.GPIO as GPIO
from rencoder import Encoder

def valueChanged(value):
    print("* New value: {}".format(value))

e1 = Encoder(4, 5, 6, callback=valueChanged)
tic = 0
try:
    while True:
        tic = tic + 1
        time.sleep(0.1)
except Exception:
    pass

GPIO.cleanup()