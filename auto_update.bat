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
	echo Extracting scheme files to: %scheme_folder%
	dev\HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "%scheme_folder%" -e "root\resource\chatscheme.res" -m -v -s
	dev\HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "%scheme_folder%" -e "root\resource\clientscheme.res" -m -v -s
	dev\HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "%scheme_folder%" -e "root\resource\gamemenu.res" -m -v -s
	dev\HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "%scheme_folder%" -e "root\resource\sourcescheme.res" -m -v -s
	echo Extracting script files to: %script_folder%
	dev\HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "%script_folder%" -e "root\scripts\hudlayout.res" -m -v -s
	dev\HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "%script_folder%" -e "root\scripts\hudanimations_tf.txt" -m -v -s
	dev\HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "%script_folder%" -e "root\scripts\mod_textures.txt" -m -v -s
	echo Extracting resource files to %resource_folder%
	RMDIR /S /Q %resource_folder%
	dev\HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "%resource_folder%\.." -e "root\resource\ui" -m -v -s
	MOVE "%resource_folder%\..\ui" "%resource_folder%"
	
	IF EXIST "dev\fart.exe" (
		echo Removing minmode lines
		dev\fart.exe -i -r -- %script_folder%\hudlayout.res _minmode _minbad
		dev\fart.exe -i -r -- %resource_folder%\* _minmode _minbad
		echo Creating default animation events
		dev\fart.exe -r -- %script_folder%\hudanimations_tf.txt "event " "event DefaultAnim"
	) ELSE (
		echo Fart.exe is not in the dev folder, can't remove minmode lines
	)
) ELSE (
	echo HLExtract is not in the dev folder, can't obtain updated base files
)

pause