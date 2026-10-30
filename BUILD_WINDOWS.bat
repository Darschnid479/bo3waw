@echo off
setlocal EnableExtensions
cd /d "%~dp0"
echo ================================================
echo       WAW TO BO3 CONVERTER - WINDOWS BUILD
echo ================================================
where dotnet >nul 2>&1 || (echo Install .NET 10 SDK first. & pause & exit /b 1)
dotnet restore "src\WaWtoBO3Converter.vbproj" -r win-x64 || goto fail
dotnet publish "src\WaWtoBO3Converter.vbproj" -c Release -r win-x64 --self-contained true -p:PublishSingleFile=true -o "dist\win-x64" --no-restore || goto fail
"dist\win-x64\WaWtoBO3Converter.exe" --selftest "%~dp0dist\selftest_results.txt" || goto fail
echo Build and self-test passed.
pause
exit /b 0
:fail
echo Build failed. Check the error output.
pause
exit /b 1
