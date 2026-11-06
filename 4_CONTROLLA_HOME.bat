@echo off
chcp 65001 >nul
cd /d "%~dp0"
set /p TV_HOST=<tv_ip.txt
echo === Passo 4: riavvio della Home del televisore ===
tools\venv\Scripts\python.exe -I tools\tv.py "am force-stop com.google.android.tvlauncher"
echo.
echo Ora premi Home sul telecomando e controlla:
echo  - in alto le icone Sorgenti e Wi-Fi
echo  - HDMI, canali, Ambilight, le tue app, il cast dall'iPhone
echo Poi riavvia il televisore e ricontrolla.
echo Se manca qualcosa, avvia RIPRISTINA.bat
pause
