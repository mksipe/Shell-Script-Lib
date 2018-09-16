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
apt install -y ufw 
apt install -y cron 
apt install -y nano 
apt install -y locate 
apt install -y iptables 
apt install -y nmap 
apt install -y clamav 
apt install -y clamsmtp 
apt install -y git 
apt install -y lightdm 
apt install -y chkrootkit 
apt install -y libpam-tmpdir 
apt install -y libpam-cracklib 
apt install -y cryptsetup 
apt install -y cryptmount 
apt install -y apt-listbugs 
apt install -y apt-listchanges 
apt install -y needrestart 
apt install -y debsecan 
apt install -y debsums 
apt install -y fail2ban 
apt install -y snort
apt install -f --fix-missing
apt autoremove -y
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
echo "Done"