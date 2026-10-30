@echo off
setlocal EnableExtensions
cd /d "%~dp0"
echo Uploading complete WaW to BO3 Converter source...
where git >nul 2>&1 || (echo Install Git for Windows first. & pause & exit /b 1)
if not exist "src\WaWtoBO3Converter.vbproj" (echo ERROR: Extract the complete v1.0 project here first. & pause & exit /b 1)
set "TMPREPO=%TEMP%\bo3waw_upload_%RANDOM%%RANDOM%"
git clone https://github.com/Darschnid479/bo3waw.git "%TMPREPO%" || goto fail
robocopy "%~dp0" "%TMPREPO%" /E /XD .git bin obj dist /XF *.log *.user *.suo >nul
if errorlevel 8 goto fail
pushd "%TMPREPO%"
git add -A
git diff --cached --quiet
if not errorlevel 1 (echo No new changes. & popd & goto success)
git commit -m "Add complete WaW to BO3 Converter v1.0 source" || (popd & goto fail)
git push origin main || (popd & goto fail)
popd
:success
echo SUCCESS: https://github.com/Darschnid479/bo3waw
pause
exit /b 0
:fail
echo Upload failed. Review Git authentication or output above.
pause
exit /b 1
