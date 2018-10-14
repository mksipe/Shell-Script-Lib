#!/bin/sh
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root. This instance will be logged."
    echo "[FAIL] $USER attempted to run Selinux on $date." | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
    exit
fi
sudo /etc/init.d/apparmor stop
apt purge apparmor -y 
apt update -y && upgrade -yuf
apt install selinux -y 