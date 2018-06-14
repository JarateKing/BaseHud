:: Originally made by Wiethoofd
:: Modified by JarateKing

@echo off
setlocal ENABLEDELAYEDEXPANSION
TITLE Extracting Default TF2 HUD Files

SET "current_folder=%cd%"
SET "scheme_folder=resource\base"
SET "script_folder=scripts\base"
SET "resource_folder=resource\ui\base"

:: Use HLExtract to get default HUD files ( https://developer.valvesoftware.com/wiki/HLLib#HLExtract )
IF EXIST "dev\HLExtract.exe" (
	REM Extracting resource folder (schemes + main menu button actions)
	echo Extracting script files to: %script_folder%
	dev\HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "%script_folder%" -e "root\scripts\hudlayout.res" -m -v -s
	dev\HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "%script_folder%" -e "root\scripts\hudanimations_tf.txt" -m -v -s
	
	IF EXIST "dev\fart.exe" (
		echo Removing minmode lines
		dev\fart.exe -i -r -- %script_folder%\hudlayout.res _minmode _minbad
		echo Creating default animation events
		dev\fart.exe -r -- %script_folder%\hudanimations_tf.txt "event " "event DefaultAnim"
	) ELSE (
		echo Fart.exe is not in the dev folder, can't remove minmode lines
	)
) ELSE (
	echo HLExtract is not in the dev folder, can't obtain updated base files
)

pause