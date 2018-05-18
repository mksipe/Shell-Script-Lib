#!/bin/sh
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "You must be root."
    exit
fi
echo -e "Initializing Directories"
X=$(pwd)
touch pwd.txt
echo $X | sudo tee pwd.txt
mkdir /Framework
chmod 755 *.sh
chmod 755 *.md
chmod 755 *.txt
chmod 755 *.bash_aliases 2> /dev/null
chmod 755 LICENSE
chmod 755 *.conf
chmod 755 *.pl
chmod 755 Makefile
chmod 755 changelog
chmod 755 config
chmod 755 control
chmod 755 postinst
chmod 755 postrm
chmod 755 preinst
chmod 755 prerm
mv *.sh /Framework
mv *.md /Framework
mv *.txt /Framework
mv *.bash_aliases /Framework 2> /dev/null
mv LICENSE /Framework
mv *.conf /Framework
mv *.pl
mv conf /Framework
mv default /Framework
mv mod /Framework
mv changelog /Framework
mv conf /Framework
mv control /Framework
mv postinst /Framework
mv postrm /Framework
mv preinst /Framework
mv prerm /Framework
cd /Framework
mkdir /bin/lib 
mkdir /bin/lib/sh 
mkdir /bin/lib/sh/MK3S
mkdir /bin/lib/sh/MK3S/logs
mv *.log /bin/lib/MK3S/logs
mv *.sh /bin/lib/sh/MK3S
mv *.conf /bin/lib/sh/MK3S
mv *.pl
mv LICENSE /bin/lib/sh/MK3S
mv conf /bin/lib/sh/MK3S
mv default /bin/lib/sh/MK3S
mv mod /bin/lib/sh/MK3S
mv Makefile /bin/lib/sh/MK3S
mv changelog /bin/lib/sh/MK3S
mv config /bin/lib/sh/MK3S
mv control /bin/lib/sh/MK3S
mv postinst /bin/lib/sh/MK3S
mv postrm /bin/lib/sh/MK3S
mv preinst /bin/lib/sh/MK3S
mv prerm /bin/lib/sh/MK3S
mv manual.txt /bin/lib/sh/MK3S

rm -r /Framework
echo -e '\e[32m'
XX=$(cat /bin/lib/sh/MK3S/pwd.sh)
rm -r $XX
echo "Software installed by $USER on $DATE in $PATH" | sudo tee /bin/lib/sh/MK3S/Version.txt
cd /bin/lib/sh/MK3S
source Functions.sh
echo -e "Program Library Installed"
unalias -a
check_for_updates
make_backup
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
apt install lightdm -y 
Install_Security_Packages
Install_Default_Packages_Debian
echo "Running Setup Scripts"
./Stealth-Mode.sh
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
git clone https://github.com/mksipe/LinuxAV-Light
chmod 755 LinuxAV-Light
cd LinuxAV-Light
chmod 755 *.sh
mv *.sh /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S
./Daemonconf.sh
./Snortconf.sh
apt autoremove -y
cd /bin/lib/sh/MK3S
git clone https://github.com/mksipe/LinuxIPconfig
git clone https://github.com/mksipe/CyberPatriotScripts
git clone https://github.com/mksipe/cyberpatriot
git clone https://github.com/mksipe/tools
chmod 755 LinuxIPconfig
chmod 755 CyberPatriotScripts & chmod 755 CyberPatriotScripts/Linux
chmod 755 cyberpatriot
chmod 755 tools
cd LinuxIPconfig
chmod 755 *.sh
mv *.sh /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S/CyberPatriotScripts/Linux
chmod 755 *.sh
mv *.sh /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S/cyberpatriot
chmod 755 *.sh
mv *.sh /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S/tools/blue
chmod 755 *.sh
chmod 755 *.pl
mv *.pl /bin/lib/sh/MK3S
mv *.sh /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S/tools/blue/apache2
chmod 755 *.sh
chmod 755 *.pl
mv *.sh /bin/lib/sh/MK3S
mv *.pl /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S/tools/blue/ftp
chmod 755 *.sh
chmod 755 *.pl
mv *.sh /bin/lib/sh/MK3S
mv *.pl /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S/tools/blue/httpd
chmod 755 *.sh
chmod 755 *.pl
mv *.sh /bin/lib/sh/MK3S
mv *.pl /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S/tools/red
chmod 755 *.sh
chmod 755 *.pl
mv *.sh /bin/lib/sh/MK3S
mv *.pl /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S/tools/red/SE
chmod 755 *.sh
chmod 755 *.pl
mv *.pl /bin/lib/sh/MK3S
mv *.sh /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S/tools/red/bombs
chmod 755 *.sh
chmod 755 *.pl
mv *.pl /bin/lib/sh/MK3S
mv *.sh /bin/lib/sh/MK3S
cd /bin/lib/sh/MK3S
rm -r LinuxIPconfig
rm -r CyberPatriotScripts
rm -r cyberpatriot
rm -r tools
echo "Autoconfigure Complete"
echo "Here is the remaining scripts that you can use in these directories"
cat /bin/lib/sh/MK3S/manual.txt
echo -e '\e[39m'
echo "Done"