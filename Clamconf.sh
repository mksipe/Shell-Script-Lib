#!/bin/sh
apt install clamav -y 
sudo freshclam
echo "0 12 * * * bash clamscan -r --remove /" | sudo tee -a /etc/crontab
echo [SUCCESS] banners.sh was ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/data/MK3S.log
clamav -r --remove /
