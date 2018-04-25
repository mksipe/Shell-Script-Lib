#!/bin/sh
DATE=$(date -u)
mv 1.bash_aliases /home/
echo "Initializing Directories"
mkdir /home/$USER
chmod 5775 /home/$USER
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
git clone https://github.com/mksipe/LinuxAV-Light
chmod 755 LinuxAV-Light
chmod 755 /LinuxAV-Light/INITIALIZE.sh
. /LinuxAV-Light/INITIALIZE.sh
git clone https://github.com/mksipe/Linux-Tor-Incog
chmod 755 Linux-Tor-Incog
chmod 755 /Linux-Tor-Incog/INITIALIZE.sh
. git/Linux-Tor-Incog/INITIALIZE.sh
mv *.sh /bin/lib/sh
echo "Software installed by $USER on $DATE in $PATH" | sudo tee /bin/lib/sh/Version.txt
echo "Done"