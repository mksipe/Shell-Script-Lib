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
else echo "[NOT_INSTALLED] UFW " & apt install ufw -y;
if [ $(which ufw |grep ufw -c) = 0 ];
then echo "[ERROR] UFW";
else echo "[INSTALLED] UFW";
fi;
fi
if [ $(which cron |grep cron -c) = 1 ];
then echo "[INSTALLED] CRON";
else echo "[NOT_INSTALLED] CRON" & apt install cron -y;
if [ $(which cron |grep cron -c) = 0 ];
then echo "[ERROR] CRON";
else echo "[INSTALLED] CRON";
fi;
fi
if [ $(which nano |grep nano -c) = 1 ];
then echo "[INSTALLED] NANO";
else echo "[NOT_INSTALLED] NANO" & apt install nano -y;
if [ $(which nano |grep nano -c) = 0 ];
then echo "[ERROR] NANO";
else echo "[INSTALLED] NANO";
fi;
fi
if [ $(which locate |grep locate -c) = 1 ];
then echo "[INSTALLED] LOCATE";
else echo "[NOT_INSTALLED LOCATE" & apt install locate -y;
if [ $(which locate |grep locate -c) = 0 ];
then echo "[ERROR] LOCATE";
else echo "[INSTALLED] LOCATE";
fi;
fi
if [ $(which iptables |grep iptables -c) = 1 ];
then echo "[INSTALLED] IPTABLES";
else echo "[NOT_INSTALLED] IPTABLES" & apt install iptables -y;
if [ $(which iptables |grep iptables -c) = 0 ];
then echo "[ERROR] IPTABLES";
else echo "[INSTALLED] IPTABLES";
fi;
fi
if [ $(which nmap |grep nmap -c) = 1 ];
then echo "[INSTALLED] NMAP";
else echo "[NOT_INSTALLED] NMAP" & apt install nmap -y;
if [ $(which nmap |grep nmap -c) = 0 ];
then echo "[ERROR] NMAP";
else echo "[INSTALLED] NMAP";
fi;
fi
if [ $(which git |grep git -c) = 1 ];
then echo "[INSTALLED] GIT";
else echo "[NOT_INSTALLED] GIT" & apt install git -y;
if [ $(which git |grep git -c) = 0 ];
then echo "[ERROR] GIT";
else echo "[INSTALLED] GIT";
fi;
fi
if [ $(which lightdm |grep lightdm -c) = 1 ];
then echo "[INSTALLED] LIGHTDM";
else echo "[NOT_INSTALLED LIGHTDM" & apt install lightdm -y;
if [ $(which lightdm |grep lightdm -c) = 0 ];
then echo "[ERROR] LIGHTDM";
else echo "[INSTALLED] LIGHTDM";
fi;
fi
if [ $(which  chkrootkit |grep chkrootkit -c) = 1 ];
then echo "[INSTALLED] CHKROOTKIT";
else echo "[NOT_INSTALLED] CHKROOTKIT" & apt install chkrootkit -y;
if [ $(which chkrootkit |grep chkrootkit -c) = 0 ];
then echo "[ERROR] CHKROOTKIT";
else echo "[INSTALLED] CHKROOTKIT";
fi;
fi
if [ $(which cryptsetup |grep cryptsetup -c) = 1 ];
then echo "[INSTALLED] CRYPT";
else echo "[NOT_INSTALLED] CRYPT" & apt install cryptsetup cryptmount -y;
if [ $(which cryptsetup |grep cryptsetup -c) = 0 ];
then echo "[ERROR] CRYPT";
else echo "[INSTALLED] CRYPT";
fi;
fi
if [ $(which apt-listbugs |grep apt-listbugs -c) = 1 ];
then echo "[INSTALLED] APT:EXT1/2 ";
else echo "[NOT_INSTALLED] APT:EXT1/2 " & apt install apt-listbugs -y;
if [ $(which apt-listbugs |grep apt-listbugs -c) = 0 ];
then echo "[ERROR] APT:EXT1/2";
else echo "[INSTALLED] APT:EXT1/2";
fi;
fi
if [ $(which apt-listchanges |grep apt-listchanges -c) = 1 ];
then echo "[INSTALLED] APT:EXT2/2 ";
else echo "[NOT_INSTALLED] APT:EXT2/2 " & apt install apt-listchanges -y;
if [ $(which apt-listchanges |grep apt-listchanges -c) = 0 ];
then echo "[ERROR] APT:EXT2/2";
else echo "[INSTALLED] APT:EXT2/2";
fi;
fi
if [ $(which needrestart |grep needrestart -c) = 1 ];
then echo "[INSTALLED] DEB:EXT1/3 ";
else echo "[NOT_INSTALLED] DEB:EXT1/3 " & apt install needrestart -y;
if [ $(which needrestart |grep needrestart -c) = 0 ];
then echo "[ERROR] DEB:EXT1/3";
else echo "[INSTALLED] DEB:EXT1/3";
fi;
fi
if [ $(which debsecan |grep debsecan -c) = 1 ];
then echo "[INSTALLED] DEB:EXT2/3 ";
else echo "[NOT_INSTALLED] DEB:EXT2/3 " & apt install debsecan -y;
if [ $(which debsecan |grep debsecan -c) = 0 ];
then echo "[ERROR] DEB:EXT:2/3";
else echo "[INSTALLED] DEB:EXT2/3";
fi;
fi
if [ $(which debsums |grep debsums -c) = 1 ];
then echo "[INSTALLED] DEB:EXT3/3 ";
else echo "[NOT_INSTALLED] DEB:EXT3/3 " & apt install debsums -y;
if [ $(which debsums |grep debsums -c) = 0 ];
then echo "[ERROR] DEB:EXT3/3";
else echo "[INSTALLED] DEB:EXT3/3";
fi;
fi
if [ $(which snort |grep snort -c) = 1 ];
then echo "[INSTALLED] SNORT ";
else echo "[NOT_INSTALLED] SNORT " & apt install snort -y;
if [ $(which snort |grep snort -c) = 0 ];
then echo "[ERROR] SNORT";
else echo "[INSTALLED] SNORT";
fi;
fi
if [ $(which whois |grep whois -c) = 1 ];
then echo "[INSTALLED] WHOIS ";
else echo "[NOT_INSTALLED] WHOIS " & apt install whois -y;
if [ $(which whois |grep whois -c) = 0 ];
then echo "[ERROR] WHOIS";
else echo "[INSTALLED] WHOIS";
fi;
fi
if [ $(which aide |grep aide -c) = 1 ];
then echo "[INSTALLED] AIDE";
else echo "[NOT_INSTALLED] AIDE" & apt install aide -y;
if [ $(which aide |grep aide -c) = 0 ];
then echo "[ERROR] AIDE";
else echo "[INSTALLED] AIDE";
fi;
fi
if [ $(apt list clamav |grep installed -c) = 1 ];
then echo "[INSTALLED] CLAMAV ";
else echo "[NOT_INSTALLED] CLAMAV " & apt install clamav -y;
if [ $(apt list clamav |grep installed -c) = 0 ];
then echo "[ERROR] CLAMAV";
else echo "[INSTALLED] CLAMAV";
fi;
fi
if [ $(apt list clamsmtp |grep installed -c) = 1 ];
then echo "[INSTALLED] CLAMSMTP ";
else echo "[NOT_INSTALLED] CLAMSMTP " & apt install clamsmtp -y;
if [ $(apt list clamsmtp |grep installed -c) = 0 ];
then echo "[ERROR] CLAMSMTP";
else echo "[INSTALLED] CLAMSMTP";
fi;
fi
if [ $(apt list fail2ban |grep installed -c) = 1 ];
then echo "[INSTALLED] FAIL2BAN ";
else echo "[NOT_INSTALLED] FAIL2BAN " & apt install fail2ban -y;
if [ $(apt list fail2ban |grep installed -c) = 0 ];
then echo "[ERROR] FAIL2BAN";
else echo "[INSTALLED] FAIL2BAN";
fi;
fi
if [ $(apt list libpam-tmpdir |grep installed -c) = 1 ];
then echo "[INSTALLED] PAM:EXT1/2 ";
else echo "[NOT_INSTALLED] PAM:EXT1/2 " & apt install libpam-tmpdir -y;
if [ $(apt list libpam-tmpdir |grep installed -c) = 0 ];
then echo "[ERROR] PAM:EXT1/2";
else echo "[INSTALLED] PAM:EXT1/2";
fi;
fi
if [ $(apt list libpam-cracklib |grep installed -c) = 1 ];
then echo "[INSTALLED] PAM:EXT2/2 ";
else echo "[NOT_INSTALLED] PAM:EXT2/2 " & apt install libpam-cracklib -y;
if [ $(apt list libpam-cracklib |grep installed -c) = 0 ];
then echo "[ERROR] PAM:EXT2/2";
else echo "[INSTALLED] PAM:EXT2/2";
fi;
fi
if [ $(apt list build-essential |grep installed -c) = 1 ];
then echo "[INSTALLED] BUILD-ESSENTIAL ";
else echo "[NOT_INSTALLED]  BUILD-ESSENTIAL " & apt install build-essentail -y;
if [ $(apt list build-essential |grep installed -c) = 0 ];
then echo "[ERROR] BUILD-ESSENTIAL";
else echo "[INSTALLED] BUILD-ESSENTIAL";
fi;
fi
if [ $(apt list inotify-utils |grep installed -c) = 1 ];
then echo "[INSTALLED] INOTIFY-UTILS ";
else echo "[NOT_INSTALLED] INOTIFY-UTILS " & apt install inotify-utils -y;
if [ $(apt list inotify-utils |grep installed -c) = 0 ];
then echo "[ERROR] INOTIFY-UTILS";
else echo "[INSTALLED] INOTIFY-UTILS";
fi;
fi
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
