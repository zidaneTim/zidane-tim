@echo off
REM Ultra-simple push script using gh CLI
cd /D "C:\Users\Driss\OneDrive - CNEAP\Obsidian-SecondCerveau\zidane-tim-setup"

REM Check if .git exists, if not initialize
if not exist .git (
  echo Initializing Git repository...
  git init
  git config user.name "Driss Zidane"
  git config user.email "zidanecylb@gmail.com"
)

REM Add all files
echo Adding files...
git add .

REM Commit if there are changes
git diff --quiet --cached || git commit -m "Deploy: zidane-tim course platform with MkDocs"

REM Add remote if it doesn't exist
git remote get-url origin >nul 2>&1 || git remote add origin https://github.com/zidaneTim/zidane-tim.git

REM Ensure we're on main branch
git branch -M main

REM Push to GitHub
echo Pushing to GitHub...
git push -u origin main --force

echo.
echo ======================================================
echo SUCCESS! Files pushed to GitHub.
echo ======================================================
echo.
echo Repository: https://github.com/zidaneTim/zidane-tim
echo Site: https://zidaneTim.github.io/zidane-tim/
echo.
pause
