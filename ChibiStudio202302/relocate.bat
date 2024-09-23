@echo off

REM ChibiStudio relocate utility 
REM 2024-2024 by Salvatore Dello Iacono
REM This utility is a convenient way to relocate your ChibiStudio 
REM installation according to your needs; it prepares an environment
REM for the ChibiStudio 'relocator.sh' script to be executed.

set CHIBISTUDIO=%~dp0

set PATH=%CHIBISTUDIO%\tools\msys2\usr\bin;%PATH%
set PATH=%CHIBISTUDIO%\tools\chibistudio\relocator;%PATH%

set BASH=%CHIBISTUDIO%\tools\msys2\usr\bin\bash.exe

cd %CHIBISTUDIO%
echo "Starting Relocator..."
%BASH% -c 'relocator.sh -s $CHIBISTUDIO'
echo "Done..."