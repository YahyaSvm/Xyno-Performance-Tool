@echo off
:: This script will completely remove Microsoft Edge and all associated data

echo Stopping Microsoft Edge processes...
taskkill /f /im msedge.exe
taskkill /f /im MicrosoftEdgeUpdate.exe

echo Removing Microsoft Edge files...
rd /s /q "%ProgramFiles(x86)%\Microsoft\Edge"
rd /s /q "%ProgramFiles%\Microsoft\Edge"
rd /s /q "%LocalAppData%\Microsoft\Edge"
rd /s /q "%ProgramData%\Microsoft\Edge"
rd /s /q "%LocalAppData%\MicrosoftEdgeUpdate"
rd /s /q "%ProgramData%\Microsoft\Edge"
rd /s /q "%AppData%\Microsoft\Edge"

echo Removing Edge from system registry...
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Edge" /f
reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\EdgeUpdate" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\Edge" /f
reg delete "HKEY_CURRENT_USER\Software\Microsoft\EdgeUpdate" /f
reg delete "HKEY_CLASSES_ROOT\Microsoft.Edge" /f
reg delete "HKEY_CLASSES_ROOT\MicrosoftEdge" /f

echo Removing Edge updater from system...
rd /s /q "%SystemRoot%\System32\MicrosoftEdgeUpdate"
rd /s /q "%ProgramFiles%\Microsoft\EdgeUpdate"
rd /s /q "%ProgramFiles(x86)%\Microsoft\EdgeUpdate"

echo Removing Edge AppX packages...
powershell -Command "Get-AppxPackage Microsoft.MicrosoftEdge | Remove-AppxPackage"

echo Cleaning leftover files and folders...
del /f /q "%LocalAppData%\Microsoft\Edge"
del /f /q "%ProgramData%\Microsoft\Edge"
del /f /q "%AppData%\Microsoft\Edge"

echo All Microsoft Edge files and registry entries have been removed.