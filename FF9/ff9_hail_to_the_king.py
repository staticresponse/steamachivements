import pyautogui
import keyboard

while True:
    if keyboard.is_pressed('q'):
        break
    pyautogui.click(button='left')
    pyautogui.PAUSE = 0.001
