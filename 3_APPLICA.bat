@echo off
chcp 65001 >nul
cd /d "%~dp0"
if not exist tv_ip.txt (echo Prima avvia 1_PREPARA.bat & pause & exit /b 1)
set /p TV_HOST=<tv_ip.txt
echo === Passo 3: applica la lista al televisore %TV_HOST% ===
echo Le app vengono solo disattivate, non cancellate. Si torna indietro con RIPRISTINA.bat
set /p OK=Scrivi SI e premi Invio per procedere: 
if /i not "%OK%"=="SI" (echo Annullato. & pause & exit /b 1)
powershell -NoProfile -ExecutionPolicy Bypass -File tools\disable.ps1 -TvHost %TV_HOST% examples\philips-55pus7956\debloat.txt
echo.
echo Fatto. Ora avvia 4_CONTROLLA_HOME.bat
pause
