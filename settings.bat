@echo off
cls
title plaDOS Settings

:settingsmenu
cls
echo. - plaDOS Settings
echo.
echo 1. Colour
echo 2. plaDOS Info
echo 3. Machine Information
echo 4. Exit
echo.
set /p "mainsettingschoice=Select: "

if "%mainsettingschoice%"=="1" (
    goto coloursettings
) else if "%mainsettingschoice%"=="2" (
    goto pladosinfo
) else if "%mainsettingschoice%"=="3" (
    goto machineinfo
) else if "%mainsettingschoice%"=="4" (
    exit
) else (
    echo Invalid input. Please try again.
    timeout 1 >nul
    goto settingsmenu
)

:coloursettings
cls
echo.
echo Choose the colour you like the most.
echo.
echo 0 - Black
echo 1 - Blue
echo 2 - Green
echo 3 - Aqua
echo 4 - Red
echo 5 - Purple
echo 6 - Yellow
echo 7 - White
echo 8 - Return to settings
echo.
set /p "settingscolour=Select: "

if "%settingscolour%"=="0" (
    color 0
    goto coloursettings
) else if "%settingscolour%"=="1" (
    color 1
    goto coloursettings
) else if "%settingscolour%"=="2" (
    color 2
    goto coloursettings
) else if "%settingscolour%"=="3" (
    color 3
    goto coloursettings
) else if "%settingscolour%"=="4" (
    color 4
    goto coloursettings
) else if "%settingscolour%"=="5" (
    color 5
    goto coloursettings
) else if "%settingscolour%"=="6" (
    color 6
    goto coloursettings
) else if "%settingscolour%"=="7" (
    color 7
    goto coloursettings
) else if "%settingscolour%"=="8" (
    goto settingsmenu
) else (
    echo Invalid input. Please try again.
    timeout 1 >nul
    goto coloursettings
)

:machineinfo
cls
setlocal enabledelayedexpansion

REM CPU information
echo CPU Information:
wmic cpu get Name, MaxClockSpeed
echo.

REM RAM information
echo RAM Information:
systeminfo | findstr /C:"Total Physical Memory"
echo.

REM GPU information
echo GPU Information:
wmic path win32_VideoController get Name
echo.

REM Storage information
echo Storage Information:
wmic logicaldisk get Size, Caption
echo.

pause
goto settingsmenu

:pladosinfo
echo.
echo plaDOS Public Beta 
echo Version: 070623-1
echo.
echo About plaDOS
echo.
echo Currently, the 1st option (folders) isn't working yet.
echo That's because we are trying to fix every small bug inside:
echo - home.bat
echo - settings.bat
echo.
echo After we find every bug, we will try to implement folders with custom applications.
echo.
echo Enjoy this Beta plaDOS!
echo.
pause
goto settingsmenu
