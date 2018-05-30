#!/bin/sh
echo "Finding files with SUID privilage for execute and world writeable files. It is recommended to open another terminal to follow this guide."
echo "Continue?"
read continue
find / -xdev \( -perm -4000 -o -perm -2000 \) -type f -print
echo "Change these file permissions with the chmoid -s option"
echo "continue?"
read continue
find / -xdev \( -nouser -o -nogroup \) -print
echo "Done"