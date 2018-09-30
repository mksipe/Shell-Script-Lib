#!/bin/sh
date=$(date -u)
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root. This instance will be logged."
    echo "[FAIL] $USER attempted to run the search on $date." | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
    exit
fi
echo "HTSA.sh started on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
touch /bin/lib/sh/MK3S/data/Exploit-Search.txt
chmod 755 /bin/lib/sh/MK3S/data/Exploit-Search.txt 
cat /dev/null > /bin/lib/sh/MK3S/data/Exploit-Search.txt
which $(cat < /bin/lib/sh/MK3S/data/Badtools.db) | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis $(cat < /bin/lib/sh/MK3S/data/Badtools.db) | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt