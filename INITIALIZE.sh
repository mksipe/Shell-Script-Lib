#!/bin/sh
DATE=$(date -u)
yellow='\133[1;33m'
blue='\034[3;34m'
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "You must be root."
    exit
fi
echo -e "${yellow}Installing Required Packages\n"
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
echo -e "${blue}Initializing Directories\n"
mkdir /Framework
chmod 755 *.sh
chmod 755 *.md
chmod 755 *.txt
chmod 755 *.bash_aliases 2> /dev/null
chmod 755 LICENSE
chmod 755 *.conf
mv *.sh /Framework
mv *.md /Framework
mv *.txt /Framework
mv *.bash_aliases /Framework 2> /dev/null
mv LICENSE /Framework
mv *.conf /Framework
cd /Framework
mv *.sh /bin/lib/sh/MK3S
mv *.conf /bin/lib/sh/MK3S
mv LICENSE /bin/lib/sh/MK3S
git clone https://github.com/mksipe/Linux-Tor-Incog
git clone https://github.com/mksipe/LinuxAV-Light
mkdir /bin
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
echo "${blue}Software installed by $USER on $DATE in $PATH\n" | sudo tee /bin/lib/sh/MK3S/Version.txt
cd /bin/lib/sh/MK3S
chmod 755 LTI
chmod 755 LAVL
cd LTI
chmod 755 K1SH.sh
cd /bin/lib/sh/MK3S
cd LAVL
chmod 755 K0SH.sh
cd /bin/lib/sh/MK3S
echo "${blue}Program Library Installed\n"
/LTI/K1SH.sh
/LAVL/K0SH.sh
./A:apache2.sh
./A:banners.sh
./A:files.sh
./A:iptables.sh
./A:network.sh
./A:nginx.sh
./A:services.sh
./A:ssh.sh
./A:sudo-su.sh
./A:umasks.sh
./A:users-groups.sh
./apache2.sh
./banners.sh
chmod 664 /sys/module/nf_conntrack_ipv6/uevent
./clamAVconf.sh
chmod 600 /sys/module/nf_conntrack_ipv6/uevent
./files.sh
./iptables.sh
./network.sh
./nginx.sh
./services.sh
./ssh.sh
./Stelath-Mode.sh
./sudo-su.sh
./UFWC.sh
./umasks.sh
./users-groups.sh
echo "${blue}Autoconfigure Complete\n"
echo "${yellow}Here is the remaining scripts that you can use in these directories\n"
cat /bin/lib/sh/MK3S/manual.txt
echo "Done"