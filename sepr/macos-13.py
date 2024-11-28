import pyautogui
import time

# List of actions with coordinates and optional text input
actions = [
    {"coords": (1149, 718), "type": "click"},
    {"coords": (807, 572), "type": "click"},
    {"coords": (1195, 531), "type": "click"},
    {"coords": (1018, 364), "type": "click"},
    {"coords": (1276, 517), "type": "click"},
    {"coords": (962, 536), "type": "click", "backspace_count": 6},
    {"type": "type", "text": "baynar"},
    {"coords": (969, 567), "type": "click"},
    {"type": "type", "text": "0369852147"},
    {"coords": (959, 609), "type": "click"},
    {"coords": (1508, 1019), "type": "click"},
]

# Iterate through actions and perform them with a 10-second delay
for action in actions:
    time.sleep(5)  # Wait 10 seconds before each action
    
    if action["type"] == "click":
        x, y = action["coords"]
        pyautogui.moveTo(x, y)
        pyautogui.click()
        print(f"Mouse clicked at ({x}, {y})")
        
        # If backspace count exists, press 'backspace'
        if "backspace_count" in action:
            for _ in range(action["backspace_count"]):
                pyautogui.press('backspace')
    
    elif action["type"] == "type":
        text = action["text"]
        pyautogui.write(text)
        print(f"Typed text: {text}")
