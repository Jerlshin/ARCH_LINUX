#!/home/jerlshin/anaconda3/bin/python

import pyautogui
import keyboard

keyboard.press_and_release('windows+9')
keyboard.press_and_release('windows+p')

pyautogui.write('terminator')

pyautogui.press('left')
pyautogui.press('left')

pyautogui.press('enter')

keyboard.press_and_release('win+m')


