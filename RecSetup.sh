#!/bin/sh
cd /bin/lib/sh/MK3S
echo -e  "Program Library Installed"
unalias -a
echo -e  "Installing Required Packages"
cd data/
git clone https://github.com/mksipe/LCRF
cd LCRF/
mkdir /bin/lib/sh/MK3S/ReferenceMaterial
chmod 755 *.txt
mv *.txt /bin/lib/sh/MK3S/data/ReferenceMaterial
cd /bin/lib/sh/MK3S
echo -e "2" >> /proc/sys/kernel/randomize_va_space
apt update -y 
apt full-upgrade -y 
RED='\033[0;31m'
NEUTRAL='\033[0;0m'
GREEN='\033[0;32m'
if [ $(which ufw |grep ufw -c) = 1 ];
then echo -e "UFW [${green}INSTALLED${neutral}]";
else echo -e "UFW [${red}NOT_INSTALLED${neutral}]" & apt install ufw -y && echo -e "UFW [${green}INSTALLED${neutral}]";
fi
if [ $(which cron |grep cron -c) = 1 ];
then echo -e "CRON [${green}INSTALLED${neutral}]";
else echo -e "CRON [${red}NOT_INSTALLED${neutral}]" & apt install cron -y && echo -e "CRON [${green}INSTALLED${neutral}]";
fi
if [ $(which nano |grep nano -c) = 1 ];
then echo -e "NANO [${green}INSTALLED${neutral}]";
else echo -e "NANO [${red}NOT_INSTALLED${neutral}]" & apt install nano -y && echo -e "NANO [${green}INSTALLED${neutral}]";
fi
if [ $(which locate |grep locate -c) = 1 ];
then echo -e "LOCATE [${green}INSTALLED${neutral}]";
else echo -e "LOCATE [${red}NOT_INSTALLED${neutral}]" & apt install locate -y && echo -e "LOCATE [${green}INSTALLED${neutral}]";
fi
if [ $(which iptables |grep iptables -c) = 1 ];
then echo -e "IPTABLES [${green}INSTALLED${neutral}]";
else echo -e "IPTABLES [${red}NOT_INSTALLED${neutral}]" & apt install iptables -y && echo -e "IPTABLES [${green}INSTALLED${neutral}]";
fi
if [ $(which nmap |grep nmap -c) = 1 ];
then echo -e "NMAP [${green}INSTALLED${neutral}]";
else echo -e "NMAP [${red}NOT_INSTALLED${neutral}]" & apt install nmap -y && echo -e "NMAP [${green}INSTALLED${neutral}]";
fi
if [ $(which clamav |grep clamav -c) = 1 ];
then echo -e "CLAMAV [${green}INSTALLED${neutral}]";
else echo -e "CLAMAV [${red}NOT_INSTALLED${neutral}]" & apt install clamav -y && echo -e "CLAMAV [${green}INSTALLED${neutral}]";
fi
if [ $(which clamsmtp |grep clamsmtp -c) = 1 ];
then echo -e "CLAMSMTP [${green}INSTALLED${neutral}]";
else echo -e "CLAMSMTP [${red}NOT_INSTALLED${neutral}]" & apt install clamsmtp -y && echo -e "CLAMSMTP [${green}INSTALLED${neutral}]";
fi
if [ $(which git |grep git -c) = 1 ];
then echo -e "GIT [${green}INSTALLED${neutral}]";
else echo -e "GIT [${red}NOT_INSTALLED${neutral}]" & apt install git -y && echo -e "GIT [${green}INSTALLED${neutral}]";
fi
if [ $(which lightdm |grep lightdm -c) = 1 ];
then echo -e "LIGHTDM [${green}INSTALLED${neutral}]";
else echo -e "LIGHTDM [${red}NOT_INSTALLED${neutral}]" & apt install lightdm -y && echo -e "LIGHTDM [${green}INSTALLED${neutral}]";
fi
if [ $(which  chkrootkit |grep chkrootkit -c) = 1 ];
then echo -e "CHKROOTKIT [${green}INSTALLED${neutral}]";
else echo -e "CHKROOTKIT [${red}NOT_INSTALLED${neutral}]" & apt install chkrootkit -y && echo -e "CHKROOTKIT [${green}INSTALLED${neutral}]";
fi
apt install -y libpam-tmpdir  && echo -e "PAM:EXT [${green}INSTALLED${neutral}]"
apt install -y libpam-cracklib && echo -e "PAM:EXT [${green}INSTALLED${neutral}]"
if [ $(which cryptsetup |grep cryptsetup -c) = 1 ];
then echo -e "CRYPT [${green}INSTALLED${neutral}]";
else echo -e "CRYPT [${red}NOT_INSTALLED${neutral}]" & apt install cryptsetup cryptmount -y && echo -e "CRYPT [${green}INSTALLED${neutral}]";
fi
if [ $(which apt-listbugs |grep apt-listbugs -c) = 1 ];
then echo -e "APT:EXT1/2 [${green}INSTALLED${neutral}]";
else echo -e "APT:EXT1/2 [${red}NOT_INSTALLED${neutral}]" & apt install apt-listbugs -y && echo -e "APT:EXT1/2 [${green}INSTALLED${neutral}]";
fi
if [ $(which apt-listchanges |grep apt-listcahnges -c) = 1 ];
then echo -e "APT:EXT2/2 [${green}INSTALLED${neutral}]";
else echo -e "APT:EXT2/2 [${red}NOT_INSTALLED${neutral}]" & apt install apt-listchanges -y && echo -e "APT:EXT2/2 [${green}INSTALLED${neutral}]";
fi
if [ $(which needrestart |grep needrestart -c) = 1 ];
then echo -e "DEB:EXT1/3 [${green}INSTALLED${neutral}]";
else echo -e "DEB:EXT1/3 [${red}NOT_INSTALLED${neutral}]" & apt install needrestart -y && echo -e "DEB:EXT1/3 [${green}INSTALLED${neutral}]";
fi
if [ $(which debsums |grep debsums -c) = 1 ];
then echo -e "DEB:EXT2/3 [${green}INSTALLED${neutral}]";
else echo -e "DEB:EXT2/3 [${red}NOT_INSTALLED${neutral}]" & apt install debsecan -y && echo -e "DEB:EXT2/3 [${green}INSTALLED${neutral}]";
fi
if [ $(which debsums |grep debsums -c) = 1 ];
then echo -e "DEB:EXT3/3 [${green}INSTALLED${neutral}]";
else echo -e "DEB:EXT3/3 [${red}NOT_INSTALLED${neutral}]" & apt install debsums -y && echo -e "DEB:EXT3/3 [${green}INSTALLED${neutral}]";
fi
apt install fail2ban -y && echo -e FAIL2BAN "[${green}INSTALLED${neutral}]"
if [ $(which snort |grep snort -c) = 1 ];
then echo -e "SNORT [${green}INSTALLED${neutral}]";
else echo -e "SNORT [${red}NOT_INSTALLED${neutral}]" & apt install snort -y && echo -e "SNORT [${green}INSTALLED${neutral}]";
fi
if [ $(which whois |grep whois -c) = 1 ];
then echo -e "WHOIS [${green}INSTALLED${neutral}]";
else echo -e "WHOIS [${red}NOT_INSTALLED${neutral}]" & apt install whois -y && echo -e "WHOIS [${green}INSTALLED${neutral}]";
fi
if [ $(which aide |grep aide -c) = 1 ];
then echo -e "AIDE [${green}INSTALLED${neutral}]";
else echo -e "AIDE [${red}NOT_INSTALLED${neutral}]" & apt install aide -y && echo -e "AIDE [${green}INSTALLED${neutral}]";
fi
if [ $(which build-essential |grep ufw -c) = 1 ];
then echo -e "UFW [${green}INSTALLED${neutral}]";
else echo -e "UFW [${red}NOT_INSTALLED${neutral}]" & apt install ufw -y && echo -e "UFW [${green}INSTALLED${neutral}]";
fi 
apt install -y build-essential && echo -e "BUILD-ESSENTIAL [${green}INSTALLED${neutral}]"
apt install -y inotify-tools && echo -e "INOTIFY-UTILS [${green}INSTALLED${neutral}]"

apt autoremove -y
echo -e "Running Setup Scripts"
./Stealth-Mode.sh
./UFWC2.sh
./umasks.sh
./users-groups.sh
./User-Auth.sh
if [ $(which apache2 | grep / -c) = 1 ];  then ./Apache.sh ; else echo -e "Skipping Apache2 Installation" ; fi
./banners.sh
./files.sh
./iptables.sh
./iptables2.sh
./network.sh
if [ $(which nginx | grep / -c) = 1 ]; then ./nginx.sh ; else echo -e "Skipping Nginx Installation" ; fi
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
echo -e "Autoconfigure Complete"
echo -e "Here is the remaining scripts that you can use in these directories"
apt install python -y
apt install glade -y
notify-send -i /usr/share/icons/gnome/scalable/places/start-here.svg 'SSL Correctly Installed.'
chkrootkit
mkdir /bin/lib/MK3S/data/Analysis
cd /bin/lib/sh/MK3S/data/Analysis
echo -e "Done"