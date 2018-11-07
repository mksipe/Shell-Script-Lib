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
then printf "UFW [${green}INSTALLED${neutral}]";
else printf "UFW [${red}NOT_INSTALLED${neutral}]" & apt install ufw -y && printf "UFW [${green}INSTALLED${neutral}]";
fi
if [ $(which cron |grep cron -c) = 1 ];
then printf "CRON [${green}INSTALLED${neutral}]";
else printf "CRON [${red}NOT_INSTALLED${neutral}]" & apt install cron -y && printf "CRON [${green}INSTALLED${neutral}]";
fi
if [ $(which nano |grep nano -c) = 1 ];
then printf "NANO [${green}INSTALLED${neutral}]";
else printf "NANO [${red}NOT_INSTALLED${neutral}]" & apt install nano -y && printf "NANO [${green}INSTALLED${neutral}]";
fi
if [ $(which locate |grep locate -c) = 1 ];
then printf "LOCATE [${green}INSTALLED${neutral}]";
else printf "LOCATE [${red}NOT_INSTALLED${neutral}]" & apt install locate -y && printf "LOCATE [${green}INSTALLED${neutral}]";
fi
if [ $(which iptables |grep iptables -c) = 1 ];
then printf "IPTABLES [${green}INSTALLED${neutral}]";
else printf "IPTABLES [${red}NOT_INSTALLED${neutral}]" & apt install iptables -y && printf "IPTABLES [${green}INSTALLED${neutral}]";
fi
if [ $(which nmap |grep nmap -c) = 1 ];
then printf "NMAP [${green}INSTALLED${neutral}]";
else printf "NMAP [${red}NOT_INSTALLED${neutral}]" & apt install nmap -y && printf "NMAP [${green}INSTALLED${neutral}]";
fi
if [ $(which clamav |grep clamav -c) = 1 ];
then printf "CLAMAV [${green}INSTALLED${neutral}]";
else printf "CLAMAV [${red}NOT_INSTALLED${neutral}]" & apt install clamav -y && printf "CLAMAV [${green}INSTALLED${neutral}]";
fi
if [ $(which clamsmtp |grep clamsmtp -c) = 1 ];
then printf "CLAMSMTP [${green}INSTALLED${neutral}]";
else printf "CLAMSMTP [${red}NOT_INSTALLED${neutral}]" & apt install clamsmtp -y && printf "CLAMSMTP [${green}INSTALLED${neutral}]";
fi
if [ $(which git |grep git -c) = 1 ];
then printf "GIT [${green}INSTALLED${neutral}]";
else printf "GIT [${red}NOT_INSTALLED${neutral}]" & apt install git -y && printf "GIT [${green}INSTALLED${neutral}]";
fi
if [ $(which lightdm |grep lightdm -c) = 1 ];
then printf "LIGHTDM [${green}INSTALLED${neutral}]";
else printf "LIGHTDM [${red}NOT_INSTALLED${neutral}]" & apt install lightdm -y && printf "LIGHTDM [${green}INSTALLED${neutral}]";
fi
if [ $(which  chkrootkit |grep chkrootkit -c) = 1 ];
then printf "CHKROOTKIT [${green}INSTALLED${neutral}]";
else printf "CHKROOTKIT [${red}NOT_INSTALLED${neutral}]" & apt install chkrootkit -y && printf "CHKROOTKIT [${green}INSTALLED${neutral}]";
fi
apt install -y libpam-tmpdir  && printf "PAM:EXT [${green}INSTALLED${neutral}]"
apt install -y libpam-cracklib && printf "PAM:EXT [${green}INSTALLED${neutral}]"
if [ $(which cryptsetup |grep cryptsetup -c) = 1 ];
then printf "CRYPT [${green}INSTALLED${neutral}]";
else printf "CRYPT [${red}NOT_INSTALLED${neutral}]" & apt install cryptsetup cryptmount -y && printf "CRYPT [${green}INSTALLED${neutral}]";
fi
if [ $(which apt-listbugs |grep apt-listbugs -c) = 1 ];
then printf "APT:EXT1/2 [${green}INSTALLED${neutral}]";
else printf "APT:EXT1/2 [${red}NOT_INSTALLED${neutral}]" & apt install apt-listbugs -y && printf "APT:EXT1/2 [${green}INSTALLED${neutral}]";
fi
if [ $(which apt-changelog |grep apt-changelog -c) = 1 ];
then printf "APT:EXT2/2 [${green}INSTALLED${neutral}]";
else printf "APT:EXT2/2 [${red}NOT_INSTALLED${neutral}]" & apt install apt-changelog -y && printf "APT:EXT2/2 [${green}INSTALLED${neutral}]";
fi
if [ $(which needrestart |grep needrestart -c) = 1 ];
then printf "DEB:EXT1/3 [${green}INSTALLED${neutral}]";
else printf "DEB:EXT1/3 [${red}NOT_INSTALLED${neutral}]" & apt install needrestart -y && printf "DEB:EXT1/3 [${green}INSTALLED${neutral}]";
fi
if [ $(which debsums |grep debsums -c) = 1 ];
then printf "DEB:EXT2/3 [${green}INSTALLED${neutral}]";
else printf "DEB:EXT2/3 [${red}NOT_INSTALLED${neutral}]" & apt install debsecan -y && printf "DEB:EXT2/3 [${green}INSTALLED${neutral}]";
fi
if [ $(which debsums |grep debsums -c) = 1 ];
then printf "DEB:EXT3/3 [${green}INSTALLED${neutral}]";
else printf "DEB:EXT3/3 [${red}NOT_INSTALLED${neutral}]" & apt install debsums -y && printf "DEB:EXT3/3 [${green}INSTALLED${neutral}]";
fi
apt install fail2ban -y && printf FAIL2BAN "[${green}INSTALLED${neutral}]"
if [ $(which snort |grep snort -c) = 1 ];
then printf "SNORT [${green}INSTALLED${neutral}]";
else printf "SNORT [${red}NOT_INSTALLED${neutral}]" & apt install snort -y && printf "SNORT [${green}INSTALLED${neutral}]";
fi
if [ $(which whois |grep whois -c) = 1 ];
then printf "WHOIS [${green}INSTALLED${neutral}]";
else printf "WHOIS [${red}NOT_INSTALLED${neutral}]" & apt install whois -y && printf "WHOIS [${green}INSTALLED${neutral}]";
fi
if [ $(which aide |grep aide -c) = 1 ];
then printf "AIDE [${green}INSTALLED${neutral}]";
else printf "AIDE [${red}NOT_INSTALLED${neutral}]" & apt install aide -y && printf "AIDE [${green}INSTALLED${neutral}]";
fi
if [ $(which build-essential |grep ufw -c) = 1 ];
then printf "UFW [${green}INSTALLED${neutral}]";
else printf "UFW [${red}NOT_INSTALLED${neutral}]" & apt install ufw -y && printf "UFW [${green}INSTALLED${neutral}]";
fi 
apt install -y build-essential && printf "BUILD-ESSENTIAL [${green}INSTALLED${neutral}]"
apt install -y inotify-tools && printf "INOTIFY-UTILS [${green}INSTALLED${neutral}]"

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