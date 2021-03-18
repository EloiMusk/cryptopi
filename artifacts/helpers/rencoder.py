# Author: https://github.com/nstansby
# Repo: https://github.com/nstansby/rpi-rotary-encoder-python
# Class to monitor a rotary encoder and update a value.  You can either read the value when you need it, by calling getValue(), or
# you can configure a callback which will be called whenever the value changes.

import RPi.GPIO as GPIO

class Encoder:

    def __init__(self, leftPin, rightPin, sw, callback=None):
        print("rencoder library started")
        self.leftPin = leftPin
        self.rightPin = rightPin
        self.sw = sw
        self.value = 0
        self.state = '00'
        self.direction = None
        self.callback = callback
        GPIO.setmode(GPIO.BCM)
        GPIO.setup(self.leftPin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
        GPIO.setup(self.rightPin, GPIO.IN, pull_up_down=GPIO.PUD_DOWN)
        GPIO.setup(self.sw, GPIO.IN, pull_up_down=GPIO.PUD_UP)
        GPIO.add_event_detect(self.leftPin, GPIO.BOTH, callback=self.transitionOccurred)  
        GPIO.add_event_detect(self.rightPin, GPIO.BOTH, callback=self.transitionOccurred)  
        GPIO.add_event_detect(self.sw, GPIO.BOTH, callback=self.transitionOccurred)  

    def transitionOccurred(self, channel):
        print("transition Occured!!")
        p1 = GPIO.input(self.leftPin)
        p2 = GPIO.input(self.rightPin)
        p3 = GPIO.input(self.sw)
        newState = "{}{}".format(p1, p2)
        if channel == p3:
            print("sw click")

        if self.state == "00": # Resting position
            if newState == "01": # Turned right 1
                self.direction = "R"
            elif newState == "10": # Turned left 1
                self.direction = "L"

        elif self.state == "01": # R1 or L3 position
            if newState == "11": # Turned right 1
                self.direction = "R"
            elif newState == "00": # Turned left 1
                if self.direction == "L":
                    self.value = self.value - 1
                    if self.callback is not None:
                        self.callback(self.value)

        elif self.state == "10": # R3 or L1
            if newState == "11": # Turned left 1
                self.direction = "L"
            elif newState == "00": # Turned right 1
                if self.direction == "R":
                    self.value = self.value + 1
                    if self.callback is not None:
                        self.callback(self.value)

        else: # self.state == "11"
            if newState == "01": # Turned left 1
                self.direction = "L"
            elif newState == "10": # Turned right 1
                self.direction = "R"
            elif newState == "00": # Skipped an intermediate 01 or 10 state, but if we know direction then a turn is complete
                if self.direction == "L":
                    self.value = self.value - 1
                    if self.callback is not None:
                        self.callback(self.value)
                elif self.direction == "R":
                    self.value = self.value + 1
                    if self.callback is not None:
                        self.callback(self.value)
                
        self.state = newState

    def getValue(self):
        return self.value