@echo off
:: Windows dilini tespit et
for /f "tokens=2 delims==" %%I in ('"wmic os get locale /value"') do set locale=%%I

:: Dili kontrol et ve uygun mesaj kutusunu göster
if "%locale%"=="00000409" (
    :: İngilizce
    msg * "Performance installation completed. Windows Update has been disabled for system optimization. To enable it, please open the 'win-update-restarter' file on the desktop."
) else if "%locale%"=="0000041F" (
    :: Türkçe
    msg * "Performans kurulumu tamamlandı. Windows Update sisteminizin optimizasyonu için kapatıldı. Açmak için masaüstündeki 'win-update-restarter' dosyasını açabilirsiniz."
) else if "%locale%"=="00000407" (
    :: Almanca
    msg * "Leistungsinstallation abgeschlossen. Windows Update wurde zur Systemoptimierung deaktiviert. Um es zu aktivieren, öffnen Sie bitte die Datei 'win-update-restarter' auf dem Desktop."
) else if "%locale%"=="0000040D" (
    :: Danca
    msg * "Ydelsesinstallation afsluttet. Windows Update er deaktiveret for systemoptimering. For at aktivere det, skal du åbne 'win-update-restarter' filen på skrivebordet."
) else if "%locale%"=="00000419" (
    :: Rusça
    msg * "Установка производительности завершена. Windows Update был отключен для оптимизации системы. Чтобы включить его, откройте файл 'win-update-restarter' на рабочем столе."
) else if "%locale%"=="0000040A" (
    :: İspanyolca
    msg * "Instalación de rendimiento completada. Windows Update ha sido desactivado para la optimización del sistema. Para habilitarlo, abra el archivo 'win-update-restarter' en el escritorio."
) else if "%locale%"=="00000404" (
    :: Çince (Simplifiye)
    msg * "性能安装完成。Windows Update已为系统优化禁用。要启用它，请打开桌面上的'win-update-restarter'文件。"
) else if "%locale%"=="00000411" (
    :: Japonca
    msg * "パフォーマンスインストールが完了しました。Windows Updateはシステム最適化のために無効になっています。これを有効にするには、デスクトップの「win-update-restarter」ファイルを開いてください。"
) else if "%locale%"=="00000412" (
    :: Korece
    msg * "성능 설치가 완료되었습니다. Windows Update는 시스템 최적화를 위해 비활성화되었습니다. 이를 활성화하려면 바탕 화면에서 'win-update-restarter' 파일을 열어주세요."
) else if "%locale%"=="0000041D" (
    :: Arapça
    msg * "تم إتمام تثبيت الأداء. تم تعطيل تحديثات Windows من أجل تحسين النظام. لتمكينها، يرجى فتح ملف 'win-update-restarter' على سطح المكتب."
) else if "%locale%"=="0000041B" (
    :: İsveççe
    msg * "Prestandainstallationen är slutförd. Windows Update har inaktiverats för systemoptimering. För att aktivera det, öppna filen 'win-update-restarter' på skrivbordet."
) else if "%locale%"=="00000414" (
    :: Norveççe
    msg * "Ytelsesinstallasjon fullført. Windows Update er deaktivert for systemoptimalisering. For å aktivere det, åpne 'win-update-restarter' filen på skrivebordet."
) else (
    :: Varsayılan mesaj (İngilizce)
    msg * "Performance installation completed. Windows Update has been disabled for system optimization. To enable it, please open the 'win-update-restarter' file on the desktop."
)

exit
