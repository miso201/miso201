#!/bin/bash

# Install Python using Homebrew
brew install python

# Create a virtual environment named 'venv'
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Upgrade pip to the latest version
pip install --upgrade pip

# Install the necessary Python packages
pip install requests
pip install pyautogui

echo "Python environment setup is complete."
