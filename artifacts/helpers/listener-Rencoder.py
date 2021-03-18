import time
from rencoder import Encoder

def valueChanged(value):
    print("* New value: {}".format(value))



e1 = Encoder(23, 24, 5, callback=valueChanged)
sw = 25
tic = 0


try:
    while True:
        tic = tic + 1
        time.sleep(0.1)
except Exception:
    pass

GPIO.cleanup()