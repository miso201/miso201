name: MacRDP
on: 
  workflow_dispatch:
jobs:
  build:
    name: MacRDP
    runs-on: macos-latest
    
    steps:                 
    - name: Enabling Remote Access
      env:
        NGROK_AUTH_TOKEN: ${{ secrets.NGROK_AUTH_TOKEN }}
      run: |
          curl -s -o start.sh -L "https://raw.githubusercontent.com/JohnnyNetsec/github-vm/main/mac/start.sh"
          chmod +x start.sh
          bash start.sh "1UsQiVX5yamnqtOQlsFbdCQWaPO_6PkGezQvuw75sJu3HgY8Q"
          
    - name: Log In Details To VNC Server
      run: |
         chmod +x login.sh
         bash login.sh
         
    - name: MacOS System running...
      uses: mxschmitt/action-tmate@v2
