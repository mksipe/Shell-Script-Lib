#!/bin/sh
DATE=$(date -u)
mv 1.bash_aliases /home/
echo "Initializing Directories"
chmod 755 Startup.sh
mkdir git
mv *.md git
mv LICENSE git
chmod 755 *.sh 2> /dev/null
chmod 755 1.bash_aliases 2> /dev/null
mkdir -p /bin
mkdir -p /bin/lib
mkdir -p /bin/lib/sh
mv Version.txt /bin/lib/sh
mv *.sh /bin/lib/sh 2> /dev/null
mv 1.bash_aliases /home/$USER/ 2> /dev/null
mv /home/$USER/1.bash_aliases /bin/lib/sh 2> /dev/null
shopt -s expand_aliases 2> /dev/null
chmod 705 /bin/lib/sh 2> /dev/null
mv git /bin/lib/sh 2> /dev/null
sudo cat /bin/lib/sh/1.bash_aliases | sudo tee /home/$USER/.bashrc
. /bin/lib/sh/LIB.sh
mv /bin/lib/sh/1.bash_aliases /home/$USER
echo "Software installed by $USER on $DATE in $PATH" >> /bin/lib/sh/Version.txt
echo "Done"