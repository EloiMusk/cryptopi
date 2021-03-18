from lib import printer
import time

t = time.localtime()
current_time = time.strftime("%H:%M", t)
printer.backlight_ctl(1)
printer.display_menu(current_time, "normal", 0)
printer.printMessage("test")
