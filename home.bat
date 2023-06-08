@echo off
title plaDOS Home
cls

:menu
cls
echo. - Welcome %USERNAME%
echo. - Currently it is %DATE% %time%
echo.
echo. - Select a program
echo. 
echo 1. Folders
echo 2. Settings
echo 3. Prompt
echo 4. Power Options
echo.

set "choice="
set /p "choice=Select: "

REM Empty input
if not defined choice (
    goto menu
)

if "%choice%"=="1" (
    set "filePath=apps\folders.bat"

    REM Check folders.bat in apps folder
    if exist "%filePath%" (
        echo Opening folders...
        call "%filePath%"
    ) else (
		cls
        echo Folders can't be found!
		echo New version will feature the folders.
        pause
    )

    goto menu
) else if "%choice%"=="2" (
    cls
    echo Opening settings...
    call settings.bat
) else if "%choice%"=="3" (
    cls
    echo Opening prompt...
    timeout 2 >nul /nobreak
    goto cmd_r_u_sure
) else if "%choice%"=="4" (
    goto power
) else (
    echo Invalid choice. Please try again.
    pause
    goto menu
)

REM can't optimise it further

:cmd_r_u_sure
cls
echo.
echo You are about to enter the Prompt mode.
echo.
echo You will have to reset the machine to go back to the menu.
echo. 

pause 
cls
cmd

REM 24 lines removed, optimised

:power
cls
echo. Power options.
echo.
echo 1. Return
echo 2. Restart
echo 3. Exit

set "powerchoice="
set /p "powerchoice=Select: "

REM Empty input
if not defined powerchoice (
    goto power
)

if "%powerchoice%"=="1" (
    cls
    timeout 2 >nul /nobreak
    goto menu
) else if "%powerchoice%"=="2" (
    echo Restarting...
    timeout 3 >nul /nobreak
    call "..\envboot.bat"
) else if "%powerchoice%"=="3" (
    cls
    echo Exiting...
    timeout 1 >nul /nobreak
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto power
)
