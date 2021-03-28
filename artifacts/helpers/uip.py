import RPi.GPIO as GPIO
import os, sys
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from lib import printer
from time import sleep
import time
from rencoder import Encoder

def valueChanged(value):
    print("* New value: {}".format(value))
    printer.display_menu(current_time, "normal", value)

def buttonclk(value):
    global backlight_state
    button_state = GPIO.input(value)
    if button_state == 0:
        backlight_state = not backlight_state
        printer.backlight_ctl(backlight_state)
        print("Backlight changed to {}".format(backlight_state))

        sleep(0.5)

#Variabels
printer = printer.printer()
Button = 20
backlight_state = 1
Tic = 0

t = time.localtime()
current_time = time.strftime("%H:%M", t)

#Set warnings off (optional)
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)

#Setup Button
GPIO.setup(Button,GPIO.IN,pull_up_down=GPIO.PUD_UP)
GPIO.add_event_detect(Button, GPIO.BOTH, callback=buttonclk)

#rotray encoder
e1 = Encoder(24, 23, 4, 0, callback=valueChanged)
sw = 25

#init
printer.backlight_ctl(backlight_state)
printer.display_menu(current_time, "normal", e1.getValue())

try:
  while True:
    Tic = Tic + 1
    sleep(0.1)
except KeyboardInterrupt:
  GPIO.cleanup()
  print ("\nBye")
