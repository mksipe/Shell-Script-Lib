#!/bin/sh
date=$(date -u)
echo "Configuring Clam Antivirus"
touch CAVoutput.txt
sudo apt install clamav -y
sudo freshclam
echo "scanning system for infections. This may take a while outputs are in a new file"
/dev/null > CAVoutput.txt
echo "$date">> CAVoutput.txt
clamscan -r --remove /  >> CAVoutput.txt
exit 0
echo "0 0 * * * bash clamscan -r --remove /" >> /etc/crontab
echo "configuration complete"