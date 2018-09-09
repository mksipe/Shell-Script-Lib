#!/bin/sh
cd /bin/lib/sh/MK3S
mkdir /proc
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
apt install ufw -y
apt install cron -y 
apt install nano -y
apt install locate -y
apt install iptables -y
apt install nmap -y
apt install clamav -y
apt install git -y
apt install lightdm -y 
apt install chkrootkit -y 
apt install libpam-tmpdir -y
apt install libpam-usb -y 
apt install cryptsetup -y 
apt install cryptmount -y 
apt install apt-listbugs -y 
apt install needrestart -y 
apt install debsecan -y 
apt install debsums -y 
apt install fail2ban -y 
apt install snort -y
apt install clamsmtp -y
echo "Running Setup Scripts"
./Stealth-Mode.sh
./UFWC2.sh
ufw enable 
./umasks.sh
./users-groups.sh
./User-Auth.sh
./Apache.sh
./banners.sh
./files.sh
./iptables.sh
./iptables2.sh
./network.sh
./nginx.sh
./services.sh
./ssh.sh
./sudo-su.sh
./ssl.sh
./proftpd.sh
./users-linux.sh
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
./Daemonconf.sh
./Clamconf.sh
./Snortconf.sh
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
git clone https://mksipe@bitbucket.org/mksipevdb.git
echo "Done"