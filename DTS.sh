#!/bin/sh
date=$(date -u)
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root. This instance will be logged."
    echo "[FAIL] $USER attempted to run the defensive tool search on $date." | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
    exit
fi
echo "DTS.sh started on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
touch /bin/lib/sh/MK3S/data/Defensive-Tool-Search.txt
chmod 755 /bin/lib/sh/MK3S/data/Defensive-Tool-Search.txt
cat /dev/null > /bin/lib/sh/MK3S/data/Defensive-Tool-Search.txt
echo "----------Firewall Systems----------------|"
if which ufw | grep -q ufw; then echo "UFW: GOOD"; else echo "UFW: NOT INSTALLED"; fi
if which iptables | grep -q iptables; then echo "IPTABLES: GOOD"; else echo "IPTABLES: NOT INSTALLED"; fi
echo "------------------IDPS---------------------|"
if which snort | grep -q snort; then echo "SNORT: GOOD"; else echo "SNORT: NOT INSTALLED"; fi 
if which aide | grep -q aide; then echo "AIDE: GOOD"; else echo "AIDE: NOT INSTALLED" fi
echo 