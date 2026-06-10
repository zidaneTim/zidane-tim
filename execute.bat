@echo off
REM Lancer le script PowerShell sans demande de confirmation
powershell -ExecutionPolicy Bypass -File "%~dp0full-deploy.ps1"
pause
