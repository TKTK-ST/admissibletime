@echo off
rem �Ώۂ̃t�@�C���̃p�X
set TARGETFILEPASS=C:\Windows\notepad.exe
powershell -ExecutionPolicy RemoteSigned %~dp0\power_test.ps1 %TARGETFILEPASS% 00:05

if %ERRORLEVEL%==1 (
    echo �G���[�ł�
) else (
    echo ����ł�
)

pause
