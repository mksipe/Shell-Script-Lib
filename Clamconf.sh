#!/bin/sh
apt install clamav -y 
sudo freshclam
echo "0 12 * * * bash clamscan -r --remove /" | sudo tee -a /etc/crontab
clamav -r --remove /