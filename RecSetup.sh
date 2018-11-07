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
then echo "[INSTALLED] UFW ";
else echo "[NOT_INSTALLED] UFW " & apt install ufw -y && echo "[INSTALLED] UFW";
fi
if [ $(which cron |grep cron -c) = 1 ];
then echo "[INSTALLED] CRON";
else echo "[NOT_INSTALLED] CRON" & apt install cron -y && echo "[INSTALLED] CRON";
fi
if [ $(which nano |grep nano -c) = 1 ];
then echo "[INSTALLED] NANO";
else echo "[NOT_INSTALLED] NANO" & apt install nano -y && echo "[INSTALLED] NANO";
fi
if [ $(which locate |grep locate -c) = 1 ];
then echo "[INSTALLED] LOCATE";
else echo "[NOT_INSTALLED LOCATE" & apt install locate -y && echo "[INSTALLED] LOCATE";
fi
if [ $(which iptables |grep iptables -c) = 1 ];
then echo "[INSTALLED] IPTABLES";
else echo "[NOT_INSTALLED] IPTABLES" & apt install iptables -y && echo "[INSTALLED] IPTABLES";
fi
if [ $(which nmap |grep nmap -c) = 1 ];
then echo "[INSTALLED] NMAP";
else echo "[NOT_INSTALLED] NMAP" & apt install nmap -y && echo "[INSTALLED] NMAP";
fi
apt install clamav -y && echo "[INSTALLED] CLAMAV";
apt install clamsmtp -y && echo "[INSTALLED] CLAMSMTP";
if [ $(which git |grep git -c) = 1 ];
then echo "[INSTALLED] GIT";
else echo "[NOT_INSTALLED] GIT" & apt install git -y && echo "[INSTALLED] GIT";
fi
if [ $(which lightdm |grep lightdm -c) = 1 ];
then echo "[INSTALLED] LIGHTDM";
else echo "[NOT_INSTALLED LIGHTDM" & apt install lightdm -y && echo "[INSTALLED] LIGHTDM";
fi
if [ $(which  chkrootkit |grep chkrootkit -c) = 1 ];
then echo "[INSTALLED] CHKROOTKIT";
else echo "[NOT_INSTALLED] CHKROOTKIT" & apt install chkrootkit -y && echo "[INSTALLED] CHKROOTKIT";
fi
apt install -y libpam-tmpdir  && echo "PAM:EXT [INSTALLED]"
apt install -y libpam-cracklib && echo "PAM:EXT [INSTALLED]"
if [ $(which cryptsetup |grep cryptsetup -c) = 1 ];
then echo "[INSTALLED] CRYPT";
else echo "[NOT_INSTALLED] CRYPT" & apt install cryptsetup cryptmount -y && echo "[INSTALLED] CRYPT";
fi
if [ $(which apt-listbugs |grep apt-listbugs -c) = 1 ];
then echo "[INSTALLED] APT:EXT1/2 ";
else echo "[NOT_INSTALLED] APT:EXT1/2 " & apt install apt-listbugs -y && echo "[INSTALLED] APT:EXT1/2 ";
fi
if [ $(which apt-listchanges |grep apt-listcahnges -c) = 1 ];
then echo "[INSTALLED] APT:EXT2/2 ";
else echo "[NOT_INSTALLED] APT:EXT2/2 " & apt install apt-listchanges -y && echo "[INSTALLED] APT:EXT2/2";
fi
if [ $(which needrestart |grep needrestart -c) = 1 ];
then echo "[INSTALLED] DEB:EXT1/3 ";
else echo "[NOT_INSTALLED] DEB:EXT1/3 " & apt install needrestart -y && echo "[INSTALLED] DEB:EXT1/3 ";
fi
if [ $(which debsums |grep debsums -c) = 1 ];
then echo "[INSTALLED] DEB:EXT2/3 ";
else echo "[NOT_INSTALLED] DEB:EXT2/3 " & apt install debsecan -y && echo "[INSTALLED] DEB:EXT2/3 ";
fi
if [ $(which debsums |grep debsums -c) = 1 ];
then echo "[INSTALLED] DEB:EXT3/3 ";
else echo "[NOT_INSTALLED] DEB:EXT3/3 " & apt install debsums -y && echo "[INSTALLED] DEB:EXT3/3 ";
fi
apt install fail2ban -y && echo FAIL2BAN "[INSTALLED]"
if [ $(which snort |grep snort -c) = 1 ];
then echo "[INSTALLED] SNORT ";
else echo "[NOT_INSTALLED] SNORT " & apt install snort -y && echo "[INSTALLED] SNORT ";
fi
if [ $(which whois |grep whois -c) = 1 ];
then echo "[INSTALLED] WHOIS ";
else echo "[NOT_INSTALLED] WHOIS " & apt install whois -y && echo "[INSTALLED] WHOIS ";
fi
if [ $(which aide |grep aide -c) = 1 ];
then echo "[INSTALLED] AIDE";
else echo "[NOT_INSTALLED] AIDE" & apt install aide -y && echo "[INSTALLED] AIDE";
fi
apt install -y build-essential && echo "BUILD-ESSENTIAL [INSTALLED]"
apt install -y inotify-tools && echo "INOTIFY-UTILS [INSTALLED]"
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