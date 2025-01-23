@echo off
:: Install French Language Pack
:: echo Installing French Language Pack...
:: dism /online /add-package /packagepath:"C:\Windows\servicing\Packages\lp.cab"

:: Set French as the display language
:: echo Setting French as display language...
:: powershell.exe -Command "Set-WinUILanguageOverride -Language fr-FR"

:: Set French as input language
:: echo Setting French as input language...
:: powershell.exe -Command "Set-WinDefaultInputMethodOverride -InputTip '040C:0000040C'"

:: Set French as system locale
:: echo Setting French as system locale...
:: powershell.exe -Command "Set-WinSystemLocale fr-FR"

:: Set French as the default language for all users
:: echo Setting French as default language for all users...
:: powershell.exe -Command "Set-WinUserLanguageList fr-FR -Force"

:: Change keyboard layout to French
echo Changing keyboard layout to French...
powershell.exe -Command "Set-WinDefaultInputMethodOverride -InputTip '040C:0000040C'"
