@echo off
:: Başlangıçta masaüstüne bir .bat dosyası yazma

:: Masaüstüne "win-update-restarter.bat" dosyasını yazma
echo @echo off > "%userprofile%\Desktop\win-update-restarter.bat"
echo net start wuauserv >> "%userprofile%\Desktop\win-update-restarter.bat"
echo sc config wuauserv start= auto >> "%userprofile%\Desktop\win-update-restarter.bat"
echo reg delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "DisableWindowsUpdateAccess" /f >> "%userprofile%\Desktop\win-update-restarter.bat"
echo echo Windows Update has been re-enabled. >> "%userprofile%\Desktop\win-update-restarter.bat"
echo pause >> "%userprofile%\Desktop\win-update-restarter.bat"

:: Bu komutlar dosyanın hemen bitmesini sağlar.
exit
