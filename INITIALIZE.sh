#!/bin/sh
DATE=$(date -u)

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "You must be root."
    exit
fi
echo "Installing Required Packages"
apt update -y 
apt full-upgrade -y
apt install ufw -y
apt install cron -y 
apt install nano -y
apt install locate -y
apt install iptables -y
apt install nmap -y
apt install clamav -y
apt install git -y
echo "Initializing Directories"
mkdir /Framework
chmod 755 *.sh
chmod 755 *.md
chmod 755 *.txt
chmod 755 *.bash_aliases
chmod 755 LICENSE
mv *.sh /Framework
mv *.md /Framework
mv *.txt /Framework
mv *.bash_aliases /Framework
mv LICENSE /Framework
cd /Framework
git clone https://github.com/mksipe/Linux-Tor-Incog
git clone https://github.com/mksipe/LinuxAV-Light
mkdir /bin 2> /dev/null
mkdir /bin/lib
mkdir /bin/lib/sh
mkdir /bin/lib/sh/MK3S
mkdir /bin/lib/sh/MK3S/LTI
mkdir /bin/lib/sh/MK3S/LAVL
cd Linux-Tor-Incog
mv *.sh /bin/lib/sh/MK3S/LTI
cd /Framework
cd LinuxAV-Light
mv *.sh /bin/lib/sh/MK3S/LAVL
cd /home
rm -r /Framework
echo "Software installed by $USER on $DATE in $PATH" | sudo tee /bin/lib/sh/MK3S/Version.txt
cd /bin/lib/sh/MK3S
chmod 755 /LTI/K1sh.sh
chmod 755 /LAVL/K0SH.sh
. /LTI/K1sh.sh
. /LAVL/K0sh.sh
shopt -s expand_aliases 2> /dev/null
cd /root 
cat /bin/lib/sh/MK3S/LIB.conf .bashrc
~/.bashrc 
echo "Done"