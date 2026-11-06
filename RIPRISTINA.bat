@echo off
chcp 65001 >nul
cd /d "%~dp0"
if not exist tv_ip.txt (echo Manca tv_ip.txt: avvia prima 1_PREPARA.bat & pause & exit /b 1)
set /p TV_HOST=<tv_ip.txt
echo === Ripristino del televisore %TV_HOST% com'era prima ===
echo Il Debug USB sul televisore deve essere attivo.
set /p OK=Scrivi SI e premi Invio per procedere: 
if /i not "%OK%"=="SI" (echo Annullato. & pause & exit /b 1)
powershell -NoProfile -ExecutionPolicy Bypass -File tools\restore.ps1 -TvHost %TV_HOST% examples\philips-55pus7956\debloat.txt
echo.
echo Fatto. Ricorda poi di spegnere il Debug USB (5_CHIUDI_ACCESSO.bat).
pause
