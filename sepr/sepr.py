#!/bin/bash

# List of coordinates for mouse clicks
coordinates=(
  "1153 721"
  "807 572"
  "1197 530"
  "1020 367"
  "1277 444"
  "911 463"
  "991 502"
  "952 550"
  "1505 1032"
  "662 310"
  "807 572"
  "1192 596"
  "1277 343"
  "1013 527"
)

# Passwords or text inputs for specific steps
passwords=(
  ""             # Step 1: No password
  ""             # Step 2: No password
  "baynar"       # Step 3: Type 'baynar'
  ""             # Step 4: No password
  "0369852147"   # Step 5: Type '0369852147'
)

# Function to create and execute a Python script
create_and_run_script() {
  local x=$1
  local y=$2
  local text=$3
  local script_name="click_script_${x}_${y}.py"

  cat <<EOF > $script_name
import pyautogui
import time

# Move to coordinates and perform double-click
x, y = $x, $y
pyautogui.moveTo(x, y)
pyautogui.click(clicks=2)
print(f"Mouse double-clicked at ({x}, {y})")

# Optional: Type text if provided
if "$text":
    time.sleep(2)
    pyautogui.write("$text")
EOF

  python $script_name
  rm $script_name
}

# Main loop to execute the scripts
for i in "${!coordinates[@]}"; do
  coord=(${coordinates[$i]})
  x=${coord[0]}
  y=${coord[1]}
  text=${passwords[$i]:-""} # Use empty string if no password
  echo "Executing script for coordinates ($x, $y)"
  create_and_run_script $x $y "$text"
  sleep 10
done

echo "All scripts executed successfully."
