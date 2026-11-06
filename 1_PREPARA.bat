@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo === Passo 1: preparazione (una volta sola) ===
set PY=
py -3 --version >nul 2>&1 && set PY=py -3
if not defined PY python -c "import sys" >nul 2>&1 && set PY=python
if not defined PY (
  echo Python non e' installato. Installalo da https://www.python.org/downloads/
  echo e durante l'installazione spunta "Add python.exe to PATH". Poi rilancia questo file.
  pause & exit /b 1
)
if not exist tools\venv\Scripts\python.exe %PY% -m venv tools\venv
tools\venv\Scripts\python.exe -m pip install -q -r tools\requirements.txt || (echo Installazione non riuscita. & pause & exit /b 1)
echo.
set /p IP=Scrivi l'indirizzo IP del televisore e premi Invio: 
>tv_ip.txt echo %IP%
echo.
echo Fatto. IP salvato: %IP%
echo Ora avvia 2_VERIFICA.bat
pause
