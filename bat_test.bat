@echo off

powershell C:\Users\rinca\Desktop\power_test.ps1 C:\Users\rinca\Desktop\power_test.ps1 00:05

if %ERRORLEVEL%==1 (
    echo エラーです
) else (
    echo 正常です。
)

pause
