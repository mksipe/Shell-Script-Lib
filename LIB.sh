#!/bin/sh
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
alias MKS_help='/bin/lib/sh/MKShelp.sh'
alias MKS_Media-Search='/bin/lib/sh/Mediascan.sh'
alias MKS_file-Privilage='/bin/lib/sh/FileSUIDpriv.sh'
echo "ALMOST DONE! run the command . /.bashrc to initialize the commands. use MKS_help to get a list of commands."

