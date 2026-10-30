@echo off
setlocal
echo This script uploads the current folder to Darschnid479/bo3waw.
echo Run it INSIDE the extracted WaWtoBO3Converter_v1 folder.
echo It needs Git for Windows and authentication with your GitHub account.
where git >nul 2>&1 || (echo Install Git for Windows first. & pause & exit /b 1)
if not exist "src\WaWtoBO3Converter.vbproj" (echo ERROR: source files missing. & pause & exit /b 1)
echo.
git init
git branch -M main
git remote remove origin 2>nul
git remote add origin https://github.com/Darschnid479/bo3waw.git
git fetch origin main
if errorlevel 1 goto fail
git checkout -B main origin/main
if errorlevel 1 goto fail
git add -A
git commit -m "Add complete WaW to BO3 Converter v1.0 source" || echo No changes to commit.
git push -u origin main
if errorlevel 1 goto fail
echo SUCCESS: Check https://github.com/Darschnid479/bo3waw
pause
exit /b 0
:fail
echo Upload failed. Check Git error and login credentials.
pause
exit /b 1
