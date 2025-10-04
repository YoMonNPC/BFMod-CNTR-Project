@echo off
chcp 65001

del /q /s "outputs" 

"7zip-extra\7za.exe" a -sccUTF-8 -scsUTF-8 -tzip -y "outputs\schinese.zip" @file-lists\\schinese.txt
"7zip-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\schinese.zip" "assets\bf\font\bold-schinese.json" "assets\bf\font\bold.json"
"7zip-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\schinese.zip" "assets\bf\texts\splashes-schinese.txt" "assets\bf\texts\splashes.txt"
"7zip-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\schinese.zip" "pack-schinese.mcmeta" "pack.mcmeta"
"7zip-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\schinese.zip" "pack-schinese.png" "pack.png"

"7zip-extra\7za.exe" a -sccUTF-8 -scsUTF-8 -tzip -y "outputs\tchinese.zip" @file-lists\\tchinese.txt
"7zip-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\tchinese.zip" "assets\bf\font\bold-tchinese.json" "assets\bf\font\bold.json"
"7zip-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\tchinese.zip" "assets\bf\texts\splashes-tchinese.txt" "assets\bf\texts\splashes.txt"
"7zip-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\tchinese.zip" "pack-tchinese.mcmeta" "pack.mcmeta"
"7zip-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\tchinese.zip" "pack-tchinese.png" "pack.png"

rename "outputs\schinese.zip" "BFMod-CNTR-Project-SC.zip"
rename "outputs\tchinese.zip" "BFMod-CNTR-Project-TC.zip"

exit