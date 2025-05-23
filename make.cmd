@echo off

set modname=LogisticsResearchRemoved_1.0.4

cd %~dp0
rmdir /s /q "%~dp0out" 2>NUL
mkdir "%~dp0out"

set outfolder=%~dp0out\%modname%
mkdir "%outfolder%"
echo Outputting to %outfolder%

robocopy "%~dp0src" "%outfolder%" /E /XF "#*" /XF "#*" /XD "#*" >NUL

@del %modname%.zip
7z a %modname%.zip "%~dp0out\*"