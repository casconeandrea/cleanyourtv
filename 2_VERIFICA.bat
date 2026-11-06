@echo off
chcp 65001 >nul
cd /d "%~dp0"
if not exist tv_ip.txt (echo Prima avvia 1_PREPARA.bat & pause & exit /b 1)
set /p TV_HOST=<tv_ip.txt
echo === Passo 2: collegamento e verifica (televisore %TV_HOST%) ===
echo Se sul televisore compare "Consentire il debug USB?", spunta "Consenti sempre" e premi OK.
echo.
echo Piattaforma (deve essere PH0M_EA_T32):
tools\venv\Scripts\python.exe -I tools\tv.py "getprop ro.product.device"
echo.
echo Versione Android (deve essere 11):
tools\venv\Scripts\python.exe -I tools\tv.py "getprop ro.build.version.release"
echo.
echo Se vedi un errore, conferma sul televisore e rilancia questo file.
echo Se i valori sono giusti, dillo a Claude prima di avviare 3_APPLICA.bat
pause
