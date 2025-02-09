@echo off
title Xyno Performance Tool - Ultra Edition
color 0A
cls
echo =======================================================
echo                Xyno Performance Tool
echo                  Ultra Edition
echo =======================================================
echo.
echo Optimizing your Windows 11 system for maximum performance.
echo Please wait while we apply all optimizations automatically...
echo =======================================================
echo.

:: Step 1: Apply Ultimate Power Plan
echo [1/15] Applying Ultimate Power Plan...
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61 >nul
powercfg -setactive e9a42b02-d5df-448d-aa00-03f14749eb61
powercfg /change monitor-timeout-ac 0
powercfg /change disk-timeout-ac 0
powercfg /change standby-timeout-ac 0
powercfg /change hibernate-timeout-ac 0
echo Ultimate Power Plan applied successfully!

:: Step 2: Disable Energy-Saving Features
echo [2/15] Disabling energy-saving features...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v CsEnabled /t REG_DWORD /d 0 /f >nul
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d 0 /f >nul
echo Energy-saving features disabled successfully!

:: Step 3: Boost CPU Performance
echo [3/15] Boosting CPU performance...
bcdedit /set useplatformclock false >nul
bcdedit /set disabledynamictick yes >nul
bcdedit /set tscsyncpolicy Enhanced >nul
echo CPU performance boosted successfully!

:: Step 4: Disable Background Apps and Processes
echo [4/15] Disabling unnecessary background apps and processes...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v GlobalUserDisabled /t REG_DWORD /d 1 /f >nul
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v Start /t REG_DWORD /d 4 /f >nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v AllowTelemetry /t REG_DWORD /d 0 /f >nul
echo Background apps and processes disabled successfully!

:: Step 5: Clear Temp Files and Prefetch Data
echo [5/15] Cleaning temporary files and prefetch data...
del /q /f /s %temp%\* >nul
rd /s /q %temp% >nul 2>&1
del /q /f /s C:\Windows\Temp\* >nul
rd /s /q C:\Windows\Temp >nul 2>&1
del /q /f /s C:\Windows\Prefetch\* >nul
echo Temporary files and prefetch data cleaned successfully!

:: Step 6: Optimize Visual Effects
echo [6/15] Optimizing visual effects for performance...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v VisualFXSetting /t REG_DWORD /d 2 /f >nul
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v UserPreferencesMask /t REG_BINARY /d 9012008010000000 /f >nul
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v FontSmoothing /t REG_SZ /d 2 /f >nul
echo Visual effects optimized successfully!

:: Step 7: Disable Windows Animations
echo [7/15] Disabling Windows animations...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v MinAnimate /t REG_SZ /d 0 /f >nul
echo Windows animations disabled successfully!

:: Step 8: Disable Cortana and Search Indexing
echo [8/15] Disabling Cortana and Search Indexing...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f >nul
sc config WSearch start= disabled >nul
sc stop WSearch >nul
echo Cortana and Search Indexing disabled successfully!

:: Step 9: Optimize Internet Speed
echo [9/15] Optimizing internet speed...
netsh int tcp set global autotuninglevel=disabled >nul
netsh int tcp set global rss=enabled >nul
netsh int tcp set global chimney=enabled >nul
echo Internet speed optimized successfully!

:: Step 10: Disable Windows Update Delivery Optimization
echo [10/15] Disabling Windows Update Delivery Optimization...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DeliveryOptimization\Config" /v DODownloadMode /t REG_DWORD /d 0 /f >nul
echo Windows Update Delivery Optimization disabled successfully!

:: Step 11: Enable GPU Scheduling
echo [11/15] Enabling GPU scheduling for better graphics performance...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v HwSchMode /t REG_DWORD /d 2 /f >nul
echo GPU scheduling enabled successfully!

:: Step 12: Clear DNS and Network Cache
echo [12/15] Clearing DNS and network cache...
ipconfig /flushdns >nul
netsh winsock reset >nul
echo DNS and network cache cleared successfully!

:: Step 13: Enable Ultra-Fast Boot
echo [13/15] Enabling ultra-fast boot settings...
bcdedit /set fastboot on >nul
bcdedit /set bootmenupolicy Standard >nul
echo Ultra-fast boot settings enabled successfully!

:: Step 14: Adjust Maximum Thread Priority
echo [14/15] Adjusting maximum thread priority...
wmic process where name="Explorer.exe" CALL setpriority 128 >nul
echo Maximum thread priority adjusted successfully!

:: Step 15: Clean System Logs
echo [15/15] Cleaning system logs for optimal performance...
wevtutil cl Application >nul
wevtutil cl Security >nul
wevtutil cl System >nul
echo System logs cleaned successfully!

:: Final Step: Completion Message
cls
echo =======================================================
echo          Xyno Performance Tool - Ultra Edition
echo                Optimization Complete!
echo =======================================================
echo Your Windows 11 system has been fully optimized.
echo Enjoy improved speed, performance, and responsiveness.
echo.
echo Press any key to close the tool...
pause >nul
exit
