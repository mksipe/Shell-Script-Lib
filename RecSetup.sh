#!/bin/sh
cd /bin/lib/sh/MK3S
echo  "Program Library Installed"
unalias -a
echo  "Installing Required Packages"
cd data/
git clone https://github.com/mksipe/LCRF
cd LCRF/
mkdir /bin/lib/sh/MK3S/ReferenceMaterial
chmod 755 *.txt
mv *.txt /bin/lib/sh/MK3S/data/ReferenceMaterial
cd /bin/lib/sh/MK3S
echo "2" >> /proc/sys/kernel/randomize_va_space
apt update -y 
apt full-upgrade -y 
RED='\033[0;31m'
NEUTRAL='\033[0;0m'
GREEN='\033[0;32m'
if [ $(which ufw |grep ufw -c) = 1 ];
then echo "UFW [${green}INSTALLED${neutral}]";
else echo "UFW [${red}NOT_INSTALLED${neutral}]" & apt install ufw -y && echo "UFW [${green}INSTALLED${neutral}]";
fi
if [ $(which cron |grep cron -c) = 1 ];
then echo "CRON [${green}INSTALLED${neutral}]";
else echo "CRON [${red}NOT_INSTALLED${neutral}]" & apt install cron -y && echo "CRON [${green}INSTALLED${neutral}]";
fi
if [ $(which nano |grep nano -c) = 1 ];
then echo "NANO [${green}INSTALLED${neutral}]";
else echo "NANO [${red}NOT_INSTALLED${neutral}]" & apt install nano -y && echo "NANO [${green}INSTALLED${neutral}]";
fi
if [ $(which locate |grep locate -c) = 1 ];
then echo "LOCATE [${green}INSTALLED${neutral}]";
else echo "LOCATE [${red}NOT_INSTALLED${neutral}]" & apt install locate -y && echo "LOCATE [${green}INSTALLED${neutral}]";
fi
if [ $(which iptables |grep iptables -c) = 1 ];
then echo "IPTABLES [${green}INSTALLED${neutral}]";
else echo "IPTABLES [${red}NOT_INSTALLED${neutral}]" & apt install iptables -y && echo "IPTABLES [${green}INSTALLED${neutral}]";
fi
if [ $(which nmap |grep nmap -c) = 1 ];
then echo "NMAP [${green}INSTALLED${neutral}]";
else echo "NMAP [${red}NOT_INSTALLED${neutral}]" & apt install nmap -y && echo "NMAP [${green}INSTALLED${neutral}]";
fi
if [ $(which clamav |grep clamav -c) = 1 ];
then echo "CLAMAV [${green}INSTALLED${neutral}]";
else echo "CLAMAV [${red}NOT_INSTALLED${neutral}]" & apt install clamav -y && echo "CLAMAV [${green}INSTALLED${neutral}]";
fi
if [ $(which clamsmtp |grep clamsmtp -c) = 1 ];
then echo "CLAMSMTP [${green}INSTALLED${neutral}]";
else echo "CLAMSMTP [${red}NOT_INSTALLED${neutral}]" & apt install clamsmtp -y && echo "CLAMSMTP [${green}INSTALLED${neutral}]";
fi
if [ $(which git |grep git -c) = 1 ];
then echo "GIT [${green}INSTALLED${neutral}]";
else echo "GIT [${red}NOT_INSTALLED${neutral}]" & apt install git -y && echo "GIT [${green}INSTALLED${neutral}]";
fi
if [ $(which lightdm |grep lightdm -c) = 1 ];
then echo "LIGHTDM [${green}INSTALLED${neutral}]";
else echo "LIGHTDM [${red}NOT_INSTALLED${neutral}]" & apt install lightdm -y && echo "LIGHTDM [${green}INSTALLED${neutral}]";
fi
if [ $(which  chkrootkit |grep chkrootkit -c) = 1 ];
then echo "CHKROOTKIT [${green}INSTALLED${neutral}]";
else echo "CHKROOTKIT [${red}NOT_INSTALLED${neutral}]" & apt install chkrootkit -y && echo "CHKROOTKIT [${green}INSTALLED${neutral}]";
fi
apt install -y libpam-tmpdir  && echo "PAM:EXT [${green}INSTALLED${neutral}]"
apt install -y libpam-cracklib && echo "PAM:EXT [${green}INSTALLED${neutral}]"
if [ $(which cryptsetup |grep cryptsetup -c) = 1 ];
then echo "CRYPT [${green}INSTALLED${neutral}]";
else echo "CRYPT [${red}NOT_INSTALLED${neutral}]" & apt install cryptsetup cryptmount -y && echo "CRYPT [${green}INSTALLED${neutral}]";
fi
if [ $(which apt-listbugs |grep apt-listbugs -c) = 1 ];
then echo "APT:EXT1/2 [${green}INSTALLED${neutral}]";
else echo "APT:EXT1/2 [${red}NOT_INSTALLED${neutral}]" & apt install apt-listbugs -y && echo "APT:EXT1/2 [${green}INSTALLED${neutral}]";
fi
if [ $(which apt-changelog |grep apt-changelog -c) = 1 ];
then echo "APT:EXT2/2 [${green}INSTALLED${neutral}]";
else echo "APT:EXT2/2 [${red}NOT_INSTALLED${neutral}]" & apt install apt-changelog -y && echo "APT:EXT2/2 [${green}INSTALLED${neutral}]";
fi
if [ $(which needrestart |grep needrestart -c) = 1 ];
then echo "DEB:EXT1/3 [${green}INSTALLED${neutral}]";
else echo "DEB:EXT1/3 [${red}NOT_INSTALLED${neutral}]" & apt install needrestart -y && echo "DEB:EXT1/3 [${green}INSTALLED${neutral}]";
fi
if [ $(which debsums |grep debsums -c) = 1 ];
then echo "DEB:EXT2/3 [${green}INSTALLED${neutral}]";
else echo "DEB:EXT2/3 [${red}NOT_INSTALLED${neutral}]" & apt install debsecan -y && echo "DEB:EXT2/3 [${green}INSTALLED${neutral}]";
fi
if [ $(which debsums |grep debsums -c) = 1 ];
then echo "DEB:EXT3/3 [${green}INSTALLED${neutral}]";
else echo "DEB:EXT3/3 [${red}NOT_INSTALLED${neutral}]" & apt install debsums -y && echo "DEB:EXT3/3 [${green}INSTALLED${neutral}]";
fi
apt install fail2ban -y && echo FAIL2BAN "[${green}INSTALLED${neutral}]"
if [ $(which snort |grep snort -c) = 1 ];
then echo "SNORT [${green}INSTALLED${neutral}]";
else echo "SNORT [${red}NOT_INSTALLED${neutral}]" & apt install snort -y && echo "SNORT [${green}INSTALLED${neutral}]";
fi
if [ $(which whois |grep whois -c) = 1 ];
then echo "WHOIS [${green}INSTALLED${neutral}]";
else echo "WHOIS [${red}NOT_INSTALLED${neutral}]" & apt install whois -y && echo "WHOIS [${green}INSTALLED${neutral}]";
fi
if [ $(which aide |grep aide -c) = 1 ];
then echo "AIDE [${green}INSTALLED${neutral}]";
else echo "AIDE [${red}NOT_INSTALLED${neutral}]" & apt install aide -y && echo "AIDE [${green}INSTALLED${neutral}]";
fi
if [ $(which build-essential |grep ufw -c) = 1 ];
then echo "UFW [${green}INSTALLED${neutral}]";
else echo "UFW [${red}NOT_INSTALLED${neutral}]" & apt install ufw -y && echo "UFW [${green}INSTALLED${neutral}]";
fi 
apt install -y build-essential && echo "BUILD-ESSENTIAL [${green}INSTALLED${neutral}]"
apt install -y inotify-tools && echo "INOTIFY-UTILS [${green}INSTALLED${neutral}]"

apt autoremove -y
echo "Running Setup Scripts"
./Stealth-Mode.sh
./UFWC2.sh
./umasks.sh
./users-groups.sh
./User-Auth.sh
if [ $(which apache2 | grep / -c) = 1 ];  then ./Apache.sh ; else echo "Skipping Apache2 Installation" ; fi
./banners.sh
./files.sh
./iptables.sh
./iptables2.sh
./network.sh
if [ $(which nginx | grep / -c) = 1 ]; then ./nginx.sh ; else echo "Skipping Nginx Installation" ; fi
./services.sh
./ssh.sh
./sudo-su.sh
./ssl.sh
./proftpd.sh
./users-linux.sh
ufw enable
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
./postinst
./postrm
./preinst
./prerm
./ipfilter.sh
./ipfw.sh
./SElinux.sh
./Daemonconf.sh
./Clamconf.sh
./Snortconf.sh
./AIDE.sh
./OSSEC.sh
chmod 755 *.sh
mv *.sh /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S
apt autoremove -y
chmod 551 /bin/lib/sh/MK3S
echo "Autoconfigure Complete"
echo "Here is the remaining scripts that you can use in these directories"
apt install python -y
apt install glade -y
notify-send -i /usr/share/icons/gnome/scalable/places/start-here.svg 'SSL Correctly Installed.'
chkrootkit
mkdir /bin/lib/MK3S/data/Analysis
cd /bin/lib/sh/MK3S/data/Analysis
echo "Done"