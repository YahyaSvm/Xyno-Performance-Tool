@echo off
title Windows 11 Gereksiz Servisleri Kapatma

echo Gereksiz servisleri devre disi birakiliyor...
echo.

:: Gereksiz servisleri durdurma
sc stop DiagTrack
sc stop PcaSvc
sc stop SysMain
sc stop WerSvc
sc stop WindowsUpdate
sc stop FontCache
sc stop WSearch
sc stop TimeBrokerSvc
sc stop NcbService

:: Gereksiz servisleri devre dışı bırakma
sc config DiagTrack start= disabled
sc config PcaSvc start= disabled
sc config SysMain start= disabled
sc config WerSvc start= disabled
sc config WindowsUpdate start= disabled
sc config FontCache start= disabled
sc config WSearch start= disabled
sc config TimeBrokerSvc start= disabled
sc config NcbService start= disabled

echo.
echo Gereksiz servisler devre disi birakildi ve kapatildi.
pause
