@echo off

:: shortcut to captioncompile.exe
:: will attempt to turn source closecaption_custom.txt into a .dat file

:: either use closecaption_english.txt, or drag-and-drop the file into compile.bat
SET "closecaption_txt=%cd%\closecaption_english.txt"
if NOT [%1]==[] SET "closecaption_txt=%~1"

:: try to auto-detect multiple locations
SET "location1=C:\Program Files (x86)\Steam\SteamApps\common\Team Fortress 2\bin\captioncompiler.exe"
SET "location2=C:\Program Files\Steam\SteamApps\common\Team Fortress 2\bin\captioncompiler.exe"
SET "location3=captioncompiler.exe"
SET "location4=bin\captioncompiler.exe"
SET "location5=..\bin\captioncompiler.exe"
SET "location6=..\..\bin\captioncompiler.exe"
SET "location7=..\..\..\bin\captioncompiler.exe"
SET "location8=..\..\..\..\bin\captioncompiler.exe"
SET "location9=..\..\..\..\..\bin\captioncompiler.exe"
SET "location10=..\..\..\..\..\..\bin\captioncompiler.exe"

IF EXIST "%location1%" (GOTO LOC1)
IF EXIST "%location2%" (GOTO LOC2)
IF EXIST "%location3%" (GOTO LOC3)
IF EXIST "%location4%" (GOTO LOC4)
IF EXIST "%location5%" (GOTO LOC5)
IF EXIST "%location6%" (GOTO LOC6)
IF EXIST "%location7%" (GOTO LOC7)
IF EXIST "%location8%" (GOTO LOC8)
IF EXIST "%location9%" (GOTO LOC9)
IF EXIST "%location10%" (GOTO LOC10)
GOTO FAILED

:LOC1
"%location1%" "%closecaption_txt%"
GOTO DONE

:LOC2
"%location2%" "%closecaption_txt%"
GOTO DONE

:LOC3
"%location3%" "%closecaption_txt%"
GOTO DONE

:LOC4
"%location4%" "%closecaption_txt%"
GOTO DONE

:LOC5
"%location5%" "%closecaption_txt%"
GOTO DONE

:LOC6
"%location6%" "%closecaption_txt%"
GOTO DONE

:LOC7
"%location7%" "%closecaption_txt%"
GOTO DONE

:LOC8
"%location8%" "%closecaption_txt%"
GOTO DONE

:LOC9
"%location9%" "%closecaption_txt%"
GOTO DONE

:LOC10
"%location10%" "%closecaption_txt%"
GOTO DONE

:FAILED
echo "CAPTIONCOMPILER.EXE NOT FOUND"
pause
GOTO DONE

:DONE