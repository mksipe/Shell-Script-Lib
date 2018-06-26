#!/bin/sh
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root. This instance will be logged."
    echo "[FAIL] $USER attempted to run the search on $date." | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
    exit
fi
echo "This will forcefully reinitialize apt to fix broken or corrupted packages. Are you sure you want to continue?"
read continue
sudo apt install -f -y
sudo apt update -y
sudo apt full-upgrade -y