@echo off
:: Chrome Policies Registry Path
set regPath=HKLM\Software\Policies\Google\Chrome

:: Extension IDs
set uBlockID=epcnnfbjfcgphgdmggkamkmgojdagdnn
set tampermonkeyID=dhdgffkkebhmkfjojejmpbldmpobfkfo
set copyfishID=eenjdnjldapjajjofmldgmkjaienebbj
set freeVPNID=majdfhpaihoncoakbjgbdhglocklcgno
set browsecVPNID=omghfjlpggmjjaagoclmmobgdodcjboh
set holaVPNID=gkojfkhlekighikafcpjkiklfbnlmeio

:: Enable Chrome Extension Install Policy
echo Enabling installation policies for extensions...

reg add "%regPath%\ExtensionInstallForcelist" /v 1 /t REG_SZ /d "%uBlockID%;https://clients2.google.com/service/update2/crx" /f
reg add "%regPath%\ExtensionInstallForcelist" /v 2 /t REG_SZ /d "%tampermonkeyID%;https://clients2.google.com/service/update2/crx" /f
reg add "%regPath%\ExtensionInstallForcelist" /v 3 /t REG_SZ /d "%copyfishID%;https://clients2.google.com/service/update2/crx" /f
reg add "%regPath%\ExtensionInstallForcelist" /v 4 /t REG_SZ /d "%freeVPNID%;https://clients2.google.com/service/update2/crx" /f
reg add "%regPath%\ExtensionInstallForcelist" /v 5 /t REG_SZ /d "%browsecVPNID%;https://clients2.google.com/service/update2/crx" /f
reg add "%regPath%\ExtensionInstallForcelist" /v 6 /t REG_SZ /d "%holaVPNID%;https://clients2.google.com/service/update2/crx" /f

:: Restart Chrome to apply changes (if running)
echo Restarting Chrome to apply changes...
taskkill /im chrome.exe /f >nul 2>&1

:: Start Chrome
echo Starting Chrome with all extensions installed...
start chrome

:: Wait for Chrome to initialize (adjust time if needed)
timeout /t 10 >nul

:: Close Chrome after installation
echo Closing Chrome...
taskkill /im chrome.exe /f >nul 2>&1

echo Extension installation setup completed.
exit
