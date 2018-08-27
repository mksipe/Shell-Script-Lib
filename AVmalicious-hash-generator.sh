#!/bin/sh
touch /home/$USER/Desktop/AVMHG-README.txt 
echo "All of the malicious hashes that have benn generated are located on your desktop in the MFH folder. No malware or ransomeware of any type is created. Only the hash." >> /home/$USER/Desktop/AVMHG-README.txt
mkdir /home/$USER/Desktop/MFH
chmod 755 /home/$USER/Desktop/MFH
awk 'NF>0' /bin/lib/sh/MK3S/data/MFH.db | while read line; do touch "${line}.txt"; echo "${line}" >> /home/$USER/Desktop/MFH/"${line}"; done
awk 'NF>0' /bin/lib/sh/MK3S/data/MFH2.db | while read line; do touch "${line}.txt"; echo "${line}" >> /home/$USER/Desktop/MFH/"${line}"; done