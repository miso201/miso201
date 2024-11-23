import pyautogui
import time

# List of actions with coordinates and optional text input
actions = [
    {"coords": (1008, 367), "type": "click"},
    {"coords": (775, 718), "type": "click"},
    {"coords": (988, 503), "type": "click", "backspace_count": 6},
    {"type": "type", "text": "baynar"},
    {"coords": (985, 535), "type": "click"},
    {"type": "type", "text": "0369852147"},
    {"coords": (1023, 577), "type": "click"},
    {"coords": (948, 370), "type": "click"},
    {"coords": (1029, 548), "type": "click"},
    {"coords": (1007, 365), "type": "click"},
    {"coords": (947, 496), "type": "click"},
    {"coords": (1028, 547), "type": "click"},
    {"coords": (598, 688), "type": "click"},
    {"coords": (873, 567), "type": "click"},
]

# Iterate through actions and perform them with a 10-second delay
for action in actions:
    time.sleep(10)  # Wait 10 seconds before each action
    
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
