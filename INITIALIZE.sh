#!/bin/sh
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "You must be root."
    exit
fi
echo -e "Installing Required Packages"
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
echo -e "Initializing Directories"
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
mv conf /Framework
mv default /Framework
mv mod /Framework
cd /Framework
mkdir /bin/lib 
mkdir /bin/lib/sh 
mkdir /bin/lib/sh/MK3S
mv *.sh /bin/lib/sh/MK3S
mv *.conf /bin/lib/sh/MK3S
mv LICENSE /bin/lib/sh/MK3S
mv conf /bin/lib/sh/MK3S
mv default /bin/lib/sh/MK3S
mv mod /bin/lib/sh/MK3S
rm -r /Framework
echo "Software installed by $USER on $DATE in $PATH" | sudo tee /bin/lib/sh/MK3S/Version.txt
cd /bin/lib/sh/MK3S
chmod 755 K1SH.sh
chmod 755 K0SH.sh
echo "Program Library Installed"
./clamAVconf.sh
./Stelath-Mode.sh
./UFWC.sh
./umasks.sh
./users-groups.sh
./apache2.sh
./banners.sh
./files.sh
./iptables.sh
./network.sh
./nginx.sh
./services.sh
./ssh.sh
./sudo-su.sh
./ssl.sh
./proftpd.sh
./quota.sh
./jail_maker_freebsd.sh
./jail_maker.sh
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
git clone https://github.com/mksipe/LinuxAV-Light
chmod 755 LinuxAV-Light
cd LinuxAV-Light
chmod 755 *.sh
mv *.sh /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S
./Daemonconf.sh
./Snortconf.sh
echo "Autoconfigure Complete"
echo "Here is the remaining scripts that you can use in these directories"
cat /bin/lib/sh/MK3S/manual.txt
echo "Done"