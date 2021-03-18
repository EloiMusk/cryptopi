from lib import I2C_LCD_driver
import os

driver=I2C_LCD_driver.lcd()

menu_symbols = [
#Refresh smbol (0)
    [ 
    0b00000, 
    0b11110, 
    0b01010, 
    0b01010, 
    0b01010, 
    0b01010, 
    0b01111, 
    0b00000 ],
#Inactive Page (1)
    [ 
    0b00000,
    0b00000,
    0b01110,
    0b01110,
    0b01110,
    0b01110,
    0b00000,
    0b00000],
#Active Page (2)
    [
    0b00000,
    0b00000,
    0b01110,
    0b01010,
    0b01010,
    0b01110,
    0b00000,
    0b00000],
#Marketcap (3)
    [
    0b00000,
    0b01110,
    0b01010,
    0b11111,
    0b11111,
    0b11111,
    0b11111,
    0b00000],
# Backlight off (4)
    [
    0b01110,
    0b11111,
    0b11110,
    0b11100,
    0b11100,
    0b11110,
    0b11111,
    0b01110],
# Backlight on (5)
    [
    0b01110,
    0b11001,
    0b10010,
    0b10100,
    0b10100,
    0b10010,
    0b11001,
    0b01110],
#arrow up (6)
    [
    0b00000,
	0b00100,
	0b01110,
	0b11111,
	0b00100,
	0b00100,
	0b00100,
	0b00000
    ],
#arrow down (7)
    [
    0b00000,
	0b00100,
	0b00100,
	0b00100,
	0b11111,
	0b01110,
	0b00100,
	0b00000
    ]
]

def printMessage(val):
    driver.lcd_display_string("You are...", 1)
    driver.lcd_display_string("cute", 2)


def backlight_ctl(state):
    lastLine= 0x80 + 0x54
    driver.lcd_load_custom_chars(menu_symbols)
    driver.lcd_write(lastLine+18)
    driver.lcd_write_char(state + 4)
    driver.backlight(state)

def display_menu(timeStamp, mode, page):
    driver.lcd_display_string(timeStamp, 4, 2)
    lastLine= 0x80 + 0x54
    driver.lcd_load_custom_chars(menu_symbols)
    driver.lcd_write(lastLine)
    driver.lcd_write_char(0)
    for i in range(8, 13):
        driver.lcd_write(lastLine + i)
        if i-8 == page:
            driver.lcd_write_char(2)
        else:
            driver.lcd_write_char(1)


def display_coin(coin, val, mcp, graph, change):
    driver.lcd_display_string(f"Coin: {coin}, Value: {val}, Marketcap: {mcp}, Graph: {graph}, Change: {change}", 1)