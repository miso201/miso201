import pyautogui
import time

# List of actions with coordinates and optional text input
actions = [
    {"coords": (1153, 721), "type": "click"},
    {"coords": (807, 572), "type": "click"},
    {"coords": (1197, 530), "type": "click"},
    {"coords": (1020, 367), "type": "click"},
    {"coords": (1277, 444), "type": "click"},
    {"coords": (911, 463), "type": "click", "backspace_count": 6},
    {"type": "type", "text": "baynar"},
    {"coords": (991, 502), "type": "click"},
    {"type": "type", "text": "0369852147"},
    {"coords": (952, 550), "type": "click"},
    {"coords": (1505, 1032), "type": "click"},
    {"coords": (1197, 593), "type": "click"},
    {"coords": (1276, 342), "type": "click"},
    {"coords": (1019, 527), "type": "click"},
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
