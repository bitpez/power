@echo off
title Zip creation

md demofolder
cd demofolder
echo Content > file.txt
tar.exe -a -c -f out.zip file.txt
demofolder

pause