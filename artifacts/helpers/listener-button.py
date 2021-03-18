import RPi.GPIO as GPIO
import os, sys
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
from lib import printer
from time import sleep

def buttonclk(value):
    global backlight_state
    button_state = GPIO.input(value)
    if button_state == 0:
        backlight_state = not backlight_state
        printer.backlight_ctl(backlight_state)
        sleep(0.5)

#Variabels
Button = 21
backlight_state = 1
Tic = 0

#Set warnings off (optional)
GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)

#Setup Button
GPIO.setup(Button,GPIO.IN,pull_up_down=GPIO.PUD_UP)
printer.backlight_ctl(backlight_state)

GPIO.add_event_detect(Button, GPIO.BOTH, callback=buttonclk)

try:
  while True:
    Tic = Tic + 1
    sleep(0.1)
except KeyboardInterrupt:
  GPIO.cleanup()
  print ("\nBye")
