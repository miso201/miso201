import pyautogui
import time

# List of actions with coordinates and optional text input
actions = [
    {"coords": (1152, 725), "type": "click"},
    {"coords": (957, 437), "type": "click"},
    {"coords": (1146, 722), "type": "click"},
    {"coords": (768, 576), "type": "click"},
    {"coords": (1207, 536), "type": "click"},
    {"coords": (1025, 369), "type": "click"},
    {"coords": (1277, 525), "type": "click"},
    {"coords": (964, 541), "type": "click", "backspace_count": 6},
    {"type": "type", "text": "baynar"},
    {"coords": (966, 580), "type": "click"},
    {"type": "type", "text": "0369852147"},
    {"coords": (944, 627), "type": "click"},
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
