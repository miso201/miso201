import pyautogui as pag
import time

# Define actions with coordinates and duration
actions = [
    (516, 405, 4),  # Click on a specific location (example: install)
    (50, 100, 1),   # Click on another location
    (249, 203, 4),  # Attempt to activate the "Allow remote access" button
    (249, 203, 4),  # Retry clicking the "Allow remote access" button
    (249, 203, 4),  # Retry again
    (249, 203, 4),  # Retry once more
    (447, 286, 4),  # Perform another action (example: upload or screenshot)
]

# Give time to focus on the target application
time.sleep(10)

# Iterate through actions
for x, y, duration in actions:
    pag.click(x, y, duration=duration)
    if (x, y) == (249, 203):  # Attempt to activate "Allow remote access"
        time.sleep(1)  # Delay to ensure the button click registers
        pag.click(x, y, duration=duration)  # Try activating the button again
    
    time.sleep(10)  # General delay between actions

print('Done!')
