import pyautogui
import time

# List of actions with coordinates and optional text input
actions = [
    {"coords": (1149, 718), "type": "click"},
    {"coords": (807, 572), "type": "click"},
    {"coords": (1197, 530), "type": "click"},
    {"coords": (1020, 367), "type": "click"},
    {"coords": (752, 716), "type": "click"},
    {"coords": (988, 503), "type": "click", "backspace_count": 6},
    {"type": "type", "text": "baynar"},
    {"coords": (985, 535), "type": "click"},
    {"type": "type", "text": "0369852147"},
    {"coords": (1032, 577), "type": "click"},
    {"coords": (1244, 493), "type": "click"},
    {"coords": (948, 409), "type": "click"},
    {"coords": (1536, 1022), "type": "click"},
    {"coords": (1197, 592), "type": "click"},
    {"coords": (1005, 365), "type": "click"},
    {"coords": (948, 454), "type": "click"},
    {"coords": (1023, 548), "type": "click"},
    {"coords": (1536, 1016), "type": "click"},
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
