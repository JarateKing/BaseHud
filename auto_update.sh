#!/bin/sh

# Originally made by Wiethoofd
# Modified and converted into Bash by JarateKing

# Use HLExtract to get default HUD files ( https://developer.valvesoftware.com/wiki/HLLib#HLExtract )
# scheme files
dev/HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "resource/base" -e "root\resource\chatscheme.res" -m -v -s
dev/HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "resource/base" -e "root\resource\clientscheme.res" -m -v -s
dev/HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "resource/base" -e "root\resource\gamemenu.res" -m -v -s
dev/HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "resource/base" -e "root\resource\sourcescheme.res" -m -v -s
# script files
dev/HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "scripts/base" -e "root\scripts\hudlayout.res" -m -v -s
dev/HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "scripts/base" -e "root\scripts\hudanimations_tf.txt" -m -v -s
dev/HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "scripts/base" -e "root\scripts\mod_textures.txt" -m -v -s
# resource files
dev/HLExtract.exe -p "../../tf2_misc_dir.vpk" -d "resource/ui/base" -e "root\resource\ui" -m -v -s
mv resource/ui/base/ui/* resource/ui/base/
rm -rf resource/ui/base/ui/

# replace minmode lines
sed -i 's/minmode/minbad/gI' scripts/base/hudlayout.res
sed -i 's/minmode/minbad/gI' resource/ui/base/*

# create default animations
sed -i 's/event /event DefaultAnim/g' scripts/base/hudanimations_tf.txt
