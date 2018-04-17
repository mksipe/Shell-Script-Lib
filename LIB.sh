
mkdir -p ~/bin
mkdir -p ~/bin/lib
mkdir -p ~/bin/lib/sh
mv *.sh /bin/lib/sh
mv LIB.sh /bin/lib/sh
alias MKS_clamAVconf='/bin/lib/sh/clamAVconf.sh'
alias MKS_clamfullscan='clamscan -r --remove /'
alias MKS_clamqsmartscan='clamscan -r --remove /usr /bin /var /sys /home'
alias MKS_Current-Connections='/bin/lib/sh/Current_Connections.sh'
alias MKS_Exploit-Search='/bin/lib/sh/Exploit-Search.sh'
alias MKS_Network-Spoof-Prevention='/bin/lib/sh/Netspoof-Prevention.sh && rm -r Netspoof-Prevention.sh'
alias MKS_Network-Status='/bin/lib/sh/Network\ Status.sh'
alias MKS_Full-Network-Scan='/bin/lib/sh/Network-Scan.sh'
alias MKS_Set-Password-Complexities='/bin/lib/sh/Password-Settings.sh'
alias MKS_Set-Remote-Connection-Complexities='/bin/lib/sh-Settings.sh'
alias MKS-System-Information='/bin/lib/sh/System\ information.sh'
alias MKS_Firewall-Config='/bin/lib/sh/UFWC.sh'
alias MKS_Update='/bin/lib/sh/Update.sh'
alias MKS_User-Auth-Config='/bin/lib/sh/User-Auth.sh'
alias MKS_help='
    echo "MKS_clamAVvonf - Configures Clam Antivirus to be enabled on the system and scan for threats daily."
    echo "MKS_clamfullscan - Scans the entire system for threats on demand. This process takes a while."
    echo "MKS_clamsmartscan - Scans for malicious software in places they tend to hide. This is quicker than the full scan. It may still take a while to complete."
    echo "MKS_Current-Connections - Scans your ports to see what current services are connected to your system. As well as active user sessions alongside with active service connection."
    echo "MKS_Exploit-Search - Searches the system for known software that can be consitered \"Dangerous\" or \" Prohibited\"."
    echo "MKS_Network-Spoof-Prevention - Sets new rules to the sysctl.conf file that is supposed to prevent ACK, SYN, ICMP, ping, and Martian log attacks."
    echo "MKS_Network-Status - Prints your local network Information."
    echo "MKS_Full-Network-Scan - Scans your entire network for devices. This scan is not stealthy and takes a while."
    echo "MKS_Set-Password-Complexities - Sets your password rules to require certain complexities such as length, charachter type, and symbol requirement. This is a manual process."
    echo "MKS_Set-Remote-Connection-Complexities - Makes your remote connections (Such as SSH) require more authentication before you can use it."
    echo "MKS_System-Information - Displays system information."
    echo "MKS_Firewall-Config - Automatically Configures UFW and adds cronjob to enable UFW on a daily basis. Automatically blocks malicious ports."
    echo "MKS_Update - Updates common repositories such as APT, YUM, and APTITUDE as well as updates git repositories"
    echo "MKS_User-Auth-Config - Configures high priority class users (This is not recommended this will make all users have the same password.)"
    echo "MKS_help - Displays this page."
'
echo "ALMOST DONE! rumn the command . /.bashrc to initialize the commands. use MKS_help to get a list of commands."

