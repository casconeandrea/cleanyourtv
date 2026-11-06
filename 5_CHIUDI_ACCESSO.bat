@echo off
chcp 65001 >nul
cd /d "%~dp0"
set /p TV_HOST=<tv_ip.txt
echo === Passo 5: verifica che l'accesso sia chiuso ===
echo Prima, sul televisore: Opzioni sviluppatore, Revoca autorizzazioni debug USB,
echo spegni Debug USB e riavvia il televisore. Poi premi un tasto qui.
pause
tools\venv\Scripts\python.exe -I tools\adb-closed.py %TV_HOST%
pause
