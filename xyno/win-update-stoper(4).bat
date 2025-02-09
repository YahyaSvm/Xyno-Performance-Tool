@echo off
echo Disabling Windows Update service...

:: Stop Windows Update service
net stop wuauserv

:: Disable Windows Update service
sc config wuauserv start= disabled

:: Disable access to Windows Update in the registry
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /t REG_DWORD /d 1 /f

:: Inform the user
echo Windows Update has been disabled.
pause
exit
