#!/bin/bash

# Ensure Python and pip are installed
if ! command -v python3 &>/dev/null; then
    echo "Python3 not found. Please install Python3 before running this script."
    exit 1
fi

if ! pip3 list | grep -q pyautogui; then
    echo "pyautogui not found. Installing pyautogui..."
    pip3 install pyautogui
fi

# Function to create and run a Python script
create_and_run() {
    local filename=$1
    local script=$2

    echo "$script" > "$filename"
    sleep 10
    python3 "$filename"
}

# Coordinates and actions
create_and_run "click_at_coords.py" "
import pyautogui
x, y = 1153, 721
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords1.py" "
import pyautogui
x, y = 807, 572
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords2.py" "
import pyautogui
x, y = 1197, 530
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords3.py" "
import pyautogui
x, y = 1020, 367
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords4.py" "
import pyautogui
x, y = 1277, 444
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords5.py" "
import pyautogui
x, y = 911, 463
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
for _ in range(6):
    pyautogui.press('backspace')
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords6.py" "
import pyautogui
import time
time.sleep(2)
pyautogui.write('baynar')
"

create_and_run "click_at_coords7.py" "
import pyautogui
x, y = 991, 502
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords8.py" "
import pyautogui
import time
time.sleep(2)
pyautogui.write('0369852147')
"

create_and_run "click_at_coords9.py" "
import pyautogui
x, y = 952, 550
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords10.py" "
import pyautogui
x, y = 1505, 1032
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords11.py" "
import pyautogui
x, y = 662, 310
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords12.py" "
import pyautogui
x, y = 807, 572
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords13.py" "
import pyautogui
x, y = 1192, 596
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords14.py" "
import pyautogui
x, y = 1277, 343
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

create_and_run "click_at_coords15.py" "
import pyautogui
x, y = 1013, 527
pyautogui.moveTo(x, y)
pyautogui.click(clicks=1)
print(f'Mouse double-clicked at ({x}, {y})')
"

echo "Script execution complete!"
