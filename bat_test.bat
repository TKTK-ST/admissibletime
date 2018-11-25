@echo off

powershell %~dp0\power_test.ps1 %~dp0\power_test.ps1 00:05

if %ERRORLEVEL%==1 (
    echo エラーです
) else (
    echo 正常です
)

pause
