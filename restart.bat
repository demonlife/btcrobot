@echo off

setlocal

if exist restart.bat goto ok
echo restart.bat must be run from its folder
goto end

:ok

:: stop
taskkill /im btcrobot.exe /f
del /q /f /a pid

Sleep 3

:: start
start /b bin\btcrobot >> log\panic.log 2>&1 &

echo restart successfully

:end