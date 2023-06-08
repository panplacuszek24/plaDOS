@echo off
title plaDOS
cls

echo launching
timeout 5 >nul /nobreak
echo init
timeout 1 >nul /nobreak
echo success
timeout 1 >nul /nobreak
cls

REM Get the folder path of the current batch script
set "batchPath=%~dp0"

REM Construct the full file paths
set "bootPath=%batchPath%env\envboot.bat"
set "deathPath=%batchPath%env\death.bat"

REM Check if envboot.bat exists
IF EXIST "%bootPath%" (
    CALL "%bootPath%"
) ELSE (
    CALL "%deathPath%"
)




