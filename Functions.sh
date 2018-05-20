#!/bin/sh

function update()
{
    apt update -y
    apt upgrade-full -y
    apt autoremove -y
    git_update
    freshclam
}
function file_search()
{
    find / -name '*.a' # Static library
    find / -name '*.au' # Audio file
    find / -name '*.bin' # Binary file
    find / -name '*.bz2' # File compressed with bzip2
    find / -name '*.c' # A C source file
    find / -name '*.conf' # A configuration file extension
    find / -name '*.cpp' # C++ source file
    find / -name '*.deb' # Debian package
    find / -name '*.diff' # A file containing instructions to apply a patch from a base version to another from a single file or project
    find / -name '*.dsc' # A Debian source information file
    find / -name '*.ebuild' # Bash script used to install programs through the portage system
    find / -name '*.el' # Emacs lisp code file
    find / -name '*.elc' # compiled emacs lisp code file
    find / -name '*.gif' # a graphical or image file
    find / -name '*.h' # Header file
    find / -name '*.html' # hypertext markup language file
    find / -name '*.htm' # hypertext markup language file
    find / -name '*.iso' # Isolation file, usually used to act as a copy of CD-ROM or DVD in the ISO-9660 filesystem format
    find / -name '*.jpg' # graphical image or file
    find / -name '*.ko' # The kernel module extension for the 2.6.x series kernel
    find / -name '*.la' # a file created by libtool to aide in using the library
    find / -name '*.lo' # The intermediate file of a library that is being compiled
    find / -name '*.lock' # Locked file that prevents the use of another file
    find / -name '*.log' # A system or program's log file
    find / -name '*.m4' # M4 macro code file
    find / -name '*.o' # A profile that is being compiled
    find / -name '*.pdf' # electronic image of a document
    find / -name '*.php' # A php serverside script
    find / -name '*.pid' # A file that contains a program's PID
    find / -name '*.pl' # A perl script
    find / -name '*.png' # A graphical image
    find / -name '*.ps' # A postscript file
    find / -name '*.py' # Python script
    find / -name '*.rpm' # A rpm package
    find / -name '*.s' # Assembly source code file
    find / -name '*.sh' # shell script 
    find / -name '*.so' # A shared object
    find / -name '*.src' # A source code file
    find / -name '*.sfs' # A squashfs filesystem 
    find / -name '*.tar' # Zipped file using tar
    find / -name '*.tar.bz2' # zipped with tar and bz2
    find / -name '*.tbz2' # File zipped with tbz2
    find / -name '*.tar.gz' # File zipped with tar and GZ
    find / -name '*.tcl' # TCL script
    find / -name '*.tgz' # Compressed file per file compression.
    find / -name '*.txt' # Text file using ASCII 
    find / -name '*.xbm' # xWindows Bitmap Image
    find / -name '*.xpm' # image file
    find / -name '*.xcf.gz' # GIMP image
    find / -name '*.xcf' # GIMP image
    find / -name '*.xwd' # A screenshot of a window taken with xwd
    find / -name '*.zip' # A zipped file
    find / -name '*.wav' # a wav file format
    find / -name '*.mp3' # MP3 audio file
    find / -name '*.mp4' # MP4 audio file
    find / -name '*.aac' # Advanced Audio Cue File
    find / -name '*.mebm'
    find / -name '*.mkv'
    find / -name '*.flv'
    find / -name '*.vob'
    find / -name '*.ogv'
    find / -name '*.ogg'
    find / -name '*.drc'
    find / -name '*.gif'
    find / -name '*.gifv'
    find / -name '*.mng'
    find / -name '*.avi'
    find / -name '*.mov'
    find / -name '*.qt'
    find / -name '*.wmv'
    find / -name '*.yuv'
    find / -name '*.rm'
    find / -name '*.rmvb'
    find / -name '*.asf'
    find / -name '*.amv'
    find / -name '*.m4p'
    find / -name '*.mpg'
    find / -name '*.mp2'
    find / -name '*.mpeg'
    find / -name '*.mpe'
    find / -name '*.mpv'
    find / -name '*.m2p'
    find / -name '*.3gp'
    find / -name '*.3g2'
    find / -name '*.mxf'
    find / -name '*.roq'
    find / -name '*.nsv'
    find / -name '*.f4v'
    find / -name '*.f4p'
    find / -name '*.f4a'
    find / -name '*.f4b'
    find / -name '*.3gp'
    find / -name '*.aa'
    find / -name '*.aax'
    find / -name '*.act'
    find / -name '*.aiff'
    find / -name '*.amr'
    find / -name '*.ape'
    find / -name '*.au'
    find / -name '*.awb'
    find / -name '*.dct'
    find / -name '*.dss'
    find / -name '*.dvf'
    find / -name '*.flac'
    find / -name '*.gsm'
    find / -name '*.iklax'
    find / -name '*.ivs'
    find / -name '*.m4a'
    find / -name '*.m4b'
    find / -name '*.mmf'
    find / -name '*.mpc'
    find / -name '*.msv'
    find / -name '*.oga'
    find / -name '*.mogg'
    find / -name '*.opus'
    find / -name '*.ra'
    find / -name '*.rm'
    find / -name '*.raw'
    find / -name '*.s1n'
    find / -name '*.tta'
    find / -name '*.vox'
    find / -name '*.wma'
    find / -name '*.wv'
    find / -name '*.webm'
    find / -name '*.8svx'
    find / -name '*.wav'
    find / -name '*.webp'
    find / -name '*.svg'
    find / -name '*.ai'
    find / -name '*.eps'
}
function print_media_files()
{
    audio=$(file_search() | grep -l *.mp3 *.mp4 *.mpg *.mp2 *.mpeg *.mpe *.mpv *.m2p *.3gp *.3g2 *.mxf *.roq *.nsv *.f4v *.f4a *.f4b *.3gp *.aa *.aax *.act *.aiff *.amr *.ape *.au *.awb *.dct *.dss *.dvf *.flac *.gsm *.iklax *.ivs *.m4a *.m4b *.mmf *.mpc *.msv *.oga *.mogg *.opus *.ra *.rm *.raw *.s1n *.tta *.vox *.wma *.wv *.webm *.8svx *.wav)
    graphics=$(file_search() | grep -l *.jpg *.png *.gif *.webp *.svg *.ai *.eps *.pdf *.xbm *.xcf.gz *.xcf)
    echo $audio > /bin/lib/sh/MK3S/audio_files.txt
    echo $graphical > /bin/lib/sh/MK3S/graphical_files.txt
    
}
function media_scan_audio()
{
    file_search() | grep mp3
    file_search() | grep wav
    file_search() | grep m4a
    file_search() | grep mpeg
    file_search() | grep ape
}
function media_scan_video()
{
    file_search() | grep avi
    file_search() | grep flv
    file_search() | grep mov
    file_search() | grep mp4 
}
function make_backup()
{
    #!/bin/bash
    mkdir /mnt/backup 
    backup_files="/home /var/spool/mail /etc /root /boot /opt /bin"
    dest="/mnt/backup"
    day=$(date +%A)
    hostname=$(hostname -s)
    archive_file="$hostname-$day.tgz"
    echo "Backing up $backup_files to $dest/$archive_file"
    date
    echo
    tar czf $dest/$archive_file $backup_files
    echo
    echo "Backup finished"
    date
    ls -lh $dest
}

function Install_Security_Packages()
{
    apt install man-db -y
    apt install lightdm -y
    apt install ufw -y
    apt install clamav -y
    apt install libpam-cracklib -y
    make_backup()
}

function Install_Default_Packages_Debian()
{
    apt install git -y
    apt install base-files -y
    apt install base-passwd -y
    apt install bash -y
    apt install bsdutils -y
    apt install coreutils -y
    apt isntall dash -y
    apt install debconf -y
    apt install debconf-i18n
    apt install debianutils -y
    apt install diffutils -y
    apt install dpkg -y
    apt install e2fslibs -y
    apt install e2fsprogs -y 
    apt install findutils -y
    apt install gcc-4.8-base -y 
    apt install gcc-4.9-base -y 
    apt install grep -y 
    apt install gzip -y 
    apt install hostname -y
    apt install init -y 
    apt install initscripts -y
    apt install libacl1 -y 
    apt install libcomerr2 -y
    apt install libattr1 -y
    apt install libblkid1 -y 
    apt install libc-bin -y
    apt install libc6 -y 
    apt install libgcc1 -y
    apt install liblocale-gettext-perl -y
    apt install liblzma5 -y
    apt install libmount -y
    apt install libncurses5 -y
    apt install libpam-modules -y
    apt install libpam-modules-bin -y
    apt install libpam-runtima -y
    apt install libpam0g -y 
    apt install libsepol1 -y
    apt install libsmartcols1 -y 
    apt install libss2 -y 
    apt isntall libtext-charwidth-perl -y 
    apt install libtext-iconv-perl -y 
    apt install libtext-wrapi18n-perl -y 
    apt install libuuid1 -y 
    apt install login -y 
    apt install lsb-base -y
    apt install mawk -y 
    apt install mount -y 
    apt install multiarch-support -y 
    apt install ncurses-base -y 
    apt install ncurses-bin -y 
    apt install passwd -y 
    apt install perl-base -y 
    apt install sed -y 
    apt install sensible-utils -y 
    apt install startpar -y 
    apt install sysvinit-utils -y 
    apt install sysv-rc -y 
    apt install tar -y 
    apt install tzdata -y 
    apt install zlib1g -y
    apt installadduser -y 
    apt install bsdmainutils -y
    apt install cpio -y
    apt install cron -y 
    apt install debian-archive-keyring -y
    apt install dmidecode -y
    apt install gnupg -y
    apt install gpgv -y
    apt install groff-base -y
    apt install ifupdown -y
    apt install init-system-helpers -y
    apt install iproute2 -y
    apt install iptables -y 
    apt install iputils-ping -y
    apt isntall isc-dhcp-client -y
    apt install isc-dhcp-common -y
    apt install kmod -y
    apt install less -y
    apt install libapt-inst1.5 -y
    apt install libapt-pkg4.12 -y
    apt install libboost-iostreams1.55.0 -y
    apt install libbz2-1.0 -y
    apt install libestr0 -y
    apt install libgdbm3 -y
    apt install libjson-c2 -y 
    apt install libkmod2 -y
    apt install liblogging-stdlog0 -y
    apt install liblognorm1 -y
    apt install libncursesw5 -y
    apt install libnewt0.52 -y
    apt install libpipeline1 -y
    apt install libpopt0 -y
    apt install libprocps3 -y
    apt install libreadline6 -y
    apt install libsigc++-2.0-0c2a -y
    apt install libslang2 -y
    apt install libssl1.0.0 -y
    apt install libstdc++6 -y
    apt install libudev1 -y
    apt install libusb-0.1-4 -y
    apt install libxtables10 -y
    apt install logrotate -y
    apt install man-db -y
    apt install manpages -y
    apt install nano -y
    apt install net-tools -y
    apt install netbase -y
    apt install netcat-traditional -y
    apt install nfacct -y
    apt install procps -y
    apt install readline-common -y
    apt install rsyslog -y
    apt install systemd -y
    apt install systemd-sysv -y
    apt install tasksel -y
    apt install tasksel-data -y
    apt install traceroute -y
    apt install udev -y
    apt install vim-common -y
    apt install vim-tiny -y
    apt install wget -y
    apt install whiptail -y

}
function Install_Repository_Materials()
{
    git clone https://github.com/mksipe/LinuxAV-Light
    git clone https://github.com/maldevel/blue-team
    git clone https://github.com/Blizzo/tools
    git clone https://github.com/mksipe/LinuxIPconfig
}

function Back()
{
    cd /bin/lib/sh/MK3S
}

function Clean_Directory()
{
    local mainlib=$(/bin/lib/sh/MK3S)
    Back() 
    cd /LinuxAV-Light
    chmod 755 *.sh
    mv *.sh $mainlib
    Back()
    cd /blue-team # Multiple file direcotries check back later on this.
    chmod 755 *.sh
    mv *.sh $mainlib
    Back()
    cd /tools
    chmod 755 *.sh
    mv *.sh $mainlib
    Back()
    cd /LinuxIPconfig
    chmod 755 *.sh
    mv *.sh $mainlib
}

function log_new_events(event)
{
    Evntt=$(date -u)
    echo $event $USER $Evntt >> /bin/lib/sh/MK3S/log/events.log
}

function check_for_updates()
{
    freshclam
    apt update -y
    apt full-upgrade -y
    apt autoclean -y
    Back()
    git clone https://github.com/mksipe/Shell-Script-lib
    cd Shell-Script-Lib 
    chmod 755 INITIALIZE.sh 
    ./INITIALIZE.sh
    Back()
    rm -r Shell-Script-Lib
}
function software_checker()
echo "Searching for Hacking tools"
date=$(date -u)
jtr=$(which John)
jnny=$(which johnny)
XHDA=$(which xhydra)
ARM=$(which armitage)
MSF=$(which metasploit)
nmp=$(which nmap)
zmp=$(which zenmap)
wshk=$(which wireshark)
nssus=$(which nessus)
acrk=$(which aircrack)
acrkng=$(which aircrack-ng)
snt=$(which snort)
CAB=$(which Cain and Abel)
BT=$(which BackTrack)
nc=$(which netcat)
tcpd=$(which tcpdump)
ksmt=$(which kismet)
nkto=$(which nikto)
bsuit=$(which Burpsuite)
hpng=$(which hping)
ecap=$(which ettercap)
sysints=$(which sysinternals)
w3af=$(which w3af)
scpy=$(which scpy)
hyda=$(which hydra)
pros=$(which paros)
oc=$(which ophcrack)
rc=$(which rainbowcrack)
msf=$(which metasploit-framework)
tlnt=$(which telnet)
ovas=$(which openvas)
oVAS=$(which openVAS)
nstmblr=$(which netstumbler)
nStmblr=$(which netStumbler)
amp=$(which Amap)
Amp=$(which amap)
sfh=$(which skipfish)
Sfh=$(which SkipFish)
Wpiti=$(which Wapiti)
wpiti=$(which wapiti)
Wfzz=$(which wfuzz)
nmsis=$(which nemisis)
Nmsis=$(which Nemisis)
Ysna=$(which Yersinia)
ysna=$(which yersinia)
Dnsf=$(which Dsniff)
dsnf=$(which dsniff)
EA=$(which EtherApe)
ea=$(which etherape)
isdr=$(which inssider)
ksmc=$(which kismac)
NM=$(which networkminer)
ngp=$(which ngrep)
ntp=$(which ntop)
pof=$(which p0f)
bts=$(which brutus)
fgd=$(which fgdump)
l0ck=$(which l0phtcrack)
mdsa=$(which medusa)
SW=$(which solarwinds)
SS=$(which superscan)
pvssh=$(which ssh)
pvwww=$(which www)
pvsamba=$(which samba)
pvvsftpd=$(which vsftpd)
pvftp=$(which ftp)
pvtcp=$(which tcp)
pvphp=$(which php)
pvsmtp=$(which smtp)
pvhttp=$(which http)
pvhttps=$(which https)
djohn=$(sudo dpkg -l | grep john)
djohnny=$(sudo dpkg -l | grep johnny)
dxhydra=$(sudo dpkg -l | grep xhydra)
darmitage=$(sudo dpkg -l | grep armitage)
dmetasploit=$(sudo dpkg -l | grep metasploit)
dnmap=$(sudo dpkg -l | grep nmap)
dzenmap=$(sudo dpkg -l | grep zenmap)
dwireshark=$(sudo dpkg -l | grep wireshark)
dnessus=$(sudo dpkg -l | grep nessus)
daircrack=$(sudo dpkg -l | grep aircrack-ng)
daircrackng=$(sudo dpkg -l | grep aircrack)
dcain=$(sudo dpkg -l | grep Cain)
dbacktrack=$(sudo dpkg -l | grep BackTrack)
dnetcat=$(sudo dpkg -l | grep netcat)
dtcpdump=$(sudo dpkg -l | grep tcpdump)
dkismet=$(sudo dpkg -l | grep kismet)
dnikto=$(sudo dpkg -l | grep nikto)
dburpsuite=$(sudo dpkg -l | grep burpsuite)
dhping=$(sudo dpkg -l | grep hping)
dettercap=$(sudo dpkg -l | grep ettercap)
dsysinternals=$(sudo dpkg -l | grep sysinternals)
dw3af=$(sudo dpkg -l | grep w3af)
dhydra=$(sudo dpkg -l | grep hydra)
dparos=$(sudo dpkg -l | grep paros )
dophcrack=$(sudo dpkg -l | grep ophcrack)
drainbowcrack=$(sudo dpkg -l | grep rainbowcrack)
dmetasploitframework=$(sudo dpkg -l | grep metasploit-framework)
dtelnet=$(sudo dpkg -l | grep telnet)
dopenvas=$(sudo dpkg -l | grep openvas)
dopenVAS=$(sudo dpkg -l | grep openVAS)
dnetStumbler=$(sudo dpkg -l | grep netStumbler)
dnetstumbler=$(sudo dpkg -l | grep netstumbler)
damap=$(sudo dpkg -l | grep amap)
dAmap=$(sudo dpkg -l | grep Amap)
dskipfish=$(sudo dpkg -l | grep skipfish)
dSkipFish=$(sudo dpkg -l | grep SkipFish)
dWapiti=$(sudo dpkg -l | grep Wapiti)
dwapiti=$(sudo dpkg -l | grep wapiti)
dWfuzz=$(sudo dpkg -l | grep Wfuzz)
dwfuzz=$(sudo dpkg -l | grep wfuzz)
dNemisis=$(sudo dpkg -l | grep Nemisis)
dnemisis=$(sudo dpkg -l | grep nemisis)
dyersinia=$(sudo dpkg -l | grep yersinia )
ddsniff=$(sudo dpkg -l | grep dsniff)
dDsniff=$(sudo dpkg -l | grep Dsniff)
dEtherApe=$(sudo dpkg -l | grep EtherApe)
dethrape=$(sudo dpkg -l | grep etherape)
dinSSIDer=$(sudo dpkg -l | grep inSSIDer)
dssider=$(sudo dpkg -l | grep inssider)
dKismac=$(sudo dpkg -l | grep KisMAC)
dKisMac=$(sudo dpkg -l | grep KisMac)
dKismca=$(sudo dpkg -l | grep Kismac)
dNetworkMiner=$(sudo dpkg -l | grep NetworkMiner)
dnetworkminer=$(sudo dpkg -l | grep networkminer)
dNgrep=$(sudo dpkg -l | grep Ngrep)
dngrep=$(sudo dpkg -l | grep ngrep)
dNtop=$(sudo dpkg -l | grep Ntop )
dntop=$(sudo dpkg -l | grep ntop)
dP0f=$(sudo dpkg -l | grep P0f)
dp0f=$(sudo dpkg -l | grep p0f)
dBrutus=$(sudo dpkg -l | grep Brutus)
dbrutus=$(sudo dpkg -l | grep brutus)
dFgdump=$(sudo dpkg -l | grep Fgdump)
dfgdump=$(sudo dpkg -l | grep fgdump)
dL0phtCrack=$(sudo dpkg -l | grep L0phtCrack) 
dl0phtcrack=$(sudo dpkg -l | grep l0phtcrack)
dMedusa=$(sudo dpkg -l | grep Medusa )
dmedusa=$(sudo dpkg -l | grep medusa )
dSolarWinds=$(sudo dpkg -l | grep SolarWinds)
dsolarwinds=$(sudo dpkg -l | grep solarwinds)
dSuperScan=$(sudo dpkg -l | grep SuperScan)
dSuperscan=$(sudo dpkg -l | grep Superscan)
dsuperscan=$(sudo dpkg -l | grep superscan)
echo "POSSIBLE_EXPLOITS most recent check was on $date" 
echo ----------Possible Pen-tools---------- 
echo "$jtr"  
echo "$jnny" 
echo "$XHDA" 
echo "$ARM" 
echo "$MSF" 
echo "$nmp" 
echo "$zmp" 
echo "$wshk" 
echo "$nssus" 
echo "$acrk" 
echo "$acrkng" 
echo "$snt" 
echo "$CAB" 
echo "$BT" 
echo "$nc" 
echo "$tcpd" 
echo "$ksmt" 
echo "$nkto" 
echo "$bsui" 
echo "$hpng" 
echo "$ecap" 
echo "$sysints" 
echo "$w3af" 
echo "$scpy" 
echo "$hyda" 
echo "$pros" 
echo "$oc" 
echo "$rc" 
echo "$msf" 
echo "$tlnt" 
echo "$ovas" 
echo "$oVAS" 
echo "$nstmblr" 
echo "$nStmblr" 
echo "$amp" 
echo "$Amp" 
echo "$sfh" 
echo "$Sfh" 
echo "$Wpiti" 
echo "$wpiti" 
echo "$Wfzz" 
echo "$nmsis" 
echo "$Nmsis" 
echo "$Ysna" 
echo "$ysna" 
echo "$Dnsf" 
echo "$dsnf" 
echo "$EA" 
echo "$ea" 
echo "$isdr" 
echo "$ksmc" 
echo "$NM" 
echo "$ngp" 
echo "$ntp" 
echo "$pof" 
echo "$bts" 
echo "$fgd" 
echo "$l0ck" 
echo "$mdsa" 
echo "$SW" 
echo "$SS"
echo "$bsuit"
echo "-----Possible-Remote-Exploits-----" 
echo "$pvssh" 
echo "$pvwww" 
echo "$pvsamba" 
echo "$pvvsftpd" 
echo "$pvftp" 
echo "$pvtcp" 
echo "$pvphp" 
echo "$pvsmtp" 
echo "$pvhttp" 
echo "$pvhttps" 
echo "-----DPKG-----" 
echo "$dopenVAS"
echo "$dskipfish"
echo "$dinSSIDer"
echo "$dnetworkminer"
echo "$dSuperscan"
echo "$djohn" 
echo "$djohnny" 
echo "$dxhydra" 
echo "$darmitage" 
echo "$dmetasploit" 
echo "$dnmap" 
echo "$dzenmap" 
echo "$dwireshark" 
echo "$dnessus" 
echo "$daircrack" 
echo "$daircrackng" 
echo "$dcain" 
echo "$dbacktrack" 
echo "$dnetcat" 
echo "$dtcpdump" 
echo "$dkismet" 
echo "$dnikto" 
echo "$dburpsuite" 
echo "$dhping" 
echo "$dettercap" 
echo "$dsysinternals" 
echo "$dw3af" 
echo "$dhydra" 
echo "$dparos" 
echo "$dophcrack" 
echo "$drainbowcrack" 
echo "$dmetasploitframework" 
echo "$dtelnet" 
echo "$dopenvas" 
echo "$vdopenVAS" 
echo "$dnetStumbler" 
echo "$dnetstumbler" 
echo "$damap" 
echo "$dAmap" 
echo "$dskipfis" 
echo "$dSkipFish" 
echo "$dWapiti" 
echo "$dwapiti" 
echo "$dWfuzz" 
echo "$dwfuzz" 
echo "$dNemisis" 
echo "$dnemisis" 
echo "$dyersinia" 
echo "$ddsniff" 
echo "$dDsniff" 
echo "$dEtherApe" 
echo "$dethrape" 
echo "$dinSSIDe" 
echo "$dssider" 
echo "$dKismac" 
echo "$dKisMac" 
echo "$dKismca" 
echo "$dNetworkMiner" 
echo "$dnetworkmine" 
echo "$dNgrep" 
echo "$dngrep" 
echo "$dNtop" 
echo "$dntop" 
echo "$dP0f" 
echo "$dp0f" 
echo "$dBrutus" 
echo "$dbrutus" 
echo "$dFgdump" 
echo "$dfgdump" 
echo "$dL0phtCrack" 
echo "$dl0phtcrack" 
echo "$dMedusa" 
echo "$dmedusa" 
echo "$dSolarWinds" 
echo "$dsolarwinds" 
echo "$dSuperScan" 
echo "$dsuperscan" 
echo "Done"
}
function update_git()
{
    for l in `find . -name .git | xargs -i dirname {}` ; do cd $l; pwd; git pull; cd -; done
}