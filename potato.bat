@echo off
:: Copy to startup

robocopy %~n0%~x0 "C:\Users\thoihenba\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /E
echo I'm potato! 🥔
pause
