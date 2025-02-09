@echo off
setlocal EnableDelayedExpansion

:: Display ASCII Art Banner
cls
echo  =======================================
echo  #                                      #
echo  #    X Y N O   P E R F O R M A N C E   #
echo  #           T O O L                   #
echo  #                                      #
echo  =======================================

timeout /t 2 >nul

:: Detect Windows Version
for /f "tokens=4-5 delims=. " %%i in ('ver') do set ver=%%i.%%j
if !ver! LSS 10.0 echo This script requires Windows 10 or higher. & exit /b

:: Get installed apps and save them to a list
powershell -Command "Get-AppxPackage | Select-Object Name, PackageFullName | Format-Table -AutoSize | Out-File apps.txt"

:: Check if list is empty
if not exist apps.txt echo No applications found. & exit /b

:: Read applications into an array
set /a index=0
for /f "tokens=1,* delims= " %%a in (apps.txt) do (
    set /a index+=1
    set "app[!index!]=%%a"
    set "package[!index!]=%%b"
)

:: Menu navigation
set "selected=1"
:menu
cls
echo ===============================
echo   Windows Application Remover
echo ===============================
echo Select an application to remove:
for /L %%i in (1,1,!index!) do (
    if "!selected!" EQU "%%i" (
        echo [*] !app[%%i]!  
    ) else (
        echo [ ] !app[%%i]!
    )
)

echo.
echo Use UP/DOWN arrow keys to navigate.
echo Press ENTER to uninstall, ESC to exit.
echo Press S to view details, P to pause background processes, R to reset selection.
echo Press L to log removed apps, V to view system info.

:: Capture key input
set "key="
for /f "delims=" %%K in ('xcopy /w /L /D nul nul 2^>nul') do set /p key=
if "!key!" EQU "H" set /a selected-=1 & if !selected! LSS 1 set "selected=!index!"
if "!key!" EQU "P" set /a selected+=1 & if !selected! GTR !index! set "selected=1"
if "!key!" EQU "M" call :uninstall & goto menu
if "!key!" EQU "S" call :details & goto menu
if "!key!" EQU "L" call :log & goto menu
if "!key!" EQU "V" call :sysinfo & goto menu
if "!key!" EQU "E" exit /b
goto menu

:uninstall
set "app_name=!app[%selected%]!"
set "package_name=!package[%selected%]!"
powershell -Command "Get-AppxPackage -Name '!package_name!' | Remove-AppxPackage"
echo Application !app_name! (!package_name!) has been removed.
echo !app_name! removed on %date% %time% >> removed_apps.log
pause
exit /b

:details
set "app_name=!app[%selected%]!"
set "package_name=!package[%selected%]!"
echo App Name: !app_name!
echo Package Name: !package_name!
powershell -Command "Get-AppxPackage -Name '!package_name!' | Select-Object *"
pause
exit /b

:log
echo Removed Applications Log:
type removed_apps.log
pause
exit /b

:sysinfo
echo System Information:
powershell -Command "Get-ComputerInfo | Select-Object OSName, OSVersion, OSArchitecture"
pause
exit /b
