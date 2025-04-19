@echo off
chcp 65001

del /q /s "output" 

"7z2409-extra\7za.exe" a -sccUTF-8 -scsUTF-8 -tzip -y "output\all.zip" @file-list\all.txt
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "output\all.zip" "assets\bf\font\bold-all.json" "assets\bf\font\bold.json"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "output\all.zip" "pack-all.mcmeta" "pack.mcmeta"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "output\all.zip" "pack-all.png" "pack.png"

"7z2409-extra\7za.exe" a -sccUTF-8 -scsUTF-8 -tzip -y "output\schinese.zip" @file-list\schinese.txt
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "output\schinese.zip" "assets\bf\font\bold-schinese.json" "assets\bf\font\bold.json"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "output\schinese.zip" "pack-schinese.mcmeta" "pack.mcmeta"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "output\schinese.zip" "pack-schinese.png" "pack.png"

"7z2409-extra\7za.exe" a -sccUTF-8 -scsUTF-8 -tzip -y "output\tchinese.zip" @file-list\tchinese.txt
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "output\tchinese.zip" "assets\bf\font\bold-tchinese.json" "assets\bf\font\bold.json"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "output\tchinese.zip" "pack-tchinese.mcmeta" "pack.mcmeta"
"7z2409-extra\7za.exe" rn -sccUTF-8 -scsUTF-8 -tzip -y "output\tchinese.zip" "pack-tchinese.png" "pack.png"

rename "output\all.zip" "BFMod-CNTR-Project-All.zip"
rename "output\schinese.zip" "BFMod-CNTR-Project-SC.zip"
rename "output\tchinese.zip" "BFMod-CNTR-Project-TC.zip"

exit