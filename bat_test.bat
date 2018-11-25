@echo off
rem 対象のファイルのパス
set TARGETFILEPASS=C:\Windows\notepad.exe
powershell %~dp0\power_test.ps1 %TARGETFILEPASS% 00:05

if %ERRORLEVEL%==1 (
    echo エラーです
) else (
    echo 正常です
)

pause
