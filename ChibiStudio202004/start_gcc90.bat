@echo off
set CHIBISTUDIO=%~dp0
set FMPP=%CHIBISTUDIO%\tools\fmpp\bin\fmpp.bat
set BASH=%CHIBISTUDIO%\tools\gnutools\bin\bash.exe
set OPENOCD=%CHIBISTUDIO%\tools\openocd\bin\openocd.exe
set PATH=%CHIBISTUDIO%\tools\gnutools\bin;%PATH%
set PATH=%CHIBISTUDIO%\tools\openocd\bin;%PATH%
set PATH=%CHIBISTUDIO%\tools\GNU Tools ARM Embedded\9.0 2019q4\arm-none-eabi\bin;%PATH%
set PATH=%CHIBISTUDIO%\tools\GNU Tools ARM Embedded\9.0 2019q4\bin;%PATH%

if exist %CHIBISTUDIO%\tools\java\jdk-16.0.1\bin\NUL goto ADD_JDK_16
if exist %CHIBISTUDIO%\tools\java\jdk-15.0.2\bin\NUL goto ADD_JDK_15
if exist %CHIBISTUDIO%\tools\java\jdk-14.0.2\bin\NUL goto ADD_JDK_14

:ADD_JDK_16
set PATH=%CHIBISTUDIO%\tools\java\jdk-16.0.1\bin;%PATH%
goto START_ECLIPSE

:ADD_JDK_15
set PATH=%CHIBISTUDIO%\tools\java\jdk-15.0.2\bin;%PATH%
goto START_ECLIPSE

:ADD_JDK_14
set PATH=%CHIBISTUDIO%\tools\java\jdk-14.0.2\bin;%PATH%
goto START_ECLIPSE

:START_ECLIPSE
cd eclipse
start eclipse.exe
