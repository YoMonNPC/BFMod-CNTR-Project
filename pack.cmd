@echo off
chcp 65001

del /q /s "outputs" 

"7z2409-extra\7za.exe" a -sccUTF-8 -scsUTF-8 -tzip -y "outputs\all.zip" @file-lists\\all.txt
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\all.zip" "assets\bf\font\bold-all.json" "assets\bf\font\bold.json"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\all.zip" "pack-all.mcmeta" "pack.mcmeta"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\all.zip" "pack-all.png" "pack.png"

"7z2409-extra\7za.exe" a -sccUTF-8 -scsUTF-8 -tzip -y "outputs\schinese.zip" @file-lists\\schinese.txt
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\schinese.zip" "assets\bf\font\bold-schinese.json" "assets\bf\font\bold.json"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\schinese.zip" "assets\bf\texts\splashes-schinese.txt" "assets\bf\texts\splashes.txt"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\schinese.zip" "pack-schinese.mcmeta" "pack.mcmeta"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\schinese.zip" "pack-schinese.png" "pack.png"

"7z2409-extra\7za.exe" a -sccUTF-8 -scsUTF-8 -tzip -y "outputs\tchinese.zip" @file-lists\\tchinese.txt
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\tchinese.zip" "assets\bf\font\bold-tchinese.json" "assets\bf\font\bold.json"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\tchinese.zip" "assets\bf\texts\splashes-tchinese.txt" "assets\bf\texts\splashes.txt"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\tchinese.zip" "pack-tchinese.mcmeta" "pack.mcmeta"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "outputs\tchinese.zip" "pack-tchinese.png" "pack.png"

rename "outputs\all.zip" "BFMod-CNTR-Project-All.zip"
rename "outputs\schinese.zip" "BFMod-CNTR-Project-SC.zip"
rename "outputs\tchinese.zip" "BFMod-CNTR-Project-TC.zip"

exit