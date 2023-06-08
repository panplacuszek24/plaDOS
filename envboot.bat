@echo off
title plaDOS Enviroment
cls
echo.-------------------
echo.-      plaDOS     -
echo.-------------------
echo.
timeout 2 >nul /nobreak
echo. Hello %USERNAME%!
timeout 1 >nul /nobreak
echo. The OS is now booting...
timeout 3 >nul /nobreak

REM Get the current folder where the batch is
set "envFolder=%~dp0"

REM Set path to the home folder
set "homeFolder=%envFolder%home"

REM Check if home.bat exists in the home folder
IF EXIST "%homeFolder%\home.bat" (
    pushd "%homeFolder%"
    call "home.bat"
    popd
) ELSE (
    call "%envFolder%death.bat"
)





