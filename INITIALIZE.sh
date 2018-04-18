#!/bin/sh
mv LIB.bashrc /home/
echo "Initializing Directories"
chmod 755 Startup.sh
mkdir git
mv *.md git
mv LICENSE git
chmod 755 *.sh 2> /dev/null
chmod 755 LIB.bashrc 2> /dev/null
mkdir -p /bin
mkdir -p /bin/lib
mkdir -p /bin/lib/sh
mv *.sh /bin/lib/sh 2> /dev/null
mv LIB.bashrc /home/ 2> /dev/null
cat /home/LIB.bashrc 2> .bashrc
mv /home/LIB.bashrc /bin/lib/sh 2> /dev/null
shopt -s expand_aliases 2> /dev/null
. /bin/lib/sh/LIB.sh 2> /dev/null
chmod 705 /bin/lib/sh 2> /dev/null
source .bashrc 2> /dev/null
mv git /bin/lib/sh 2> /dev/null
echo "Done"