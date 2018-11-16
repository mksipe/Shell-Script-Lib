#!/bin/sh
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root."
    exit
fi
# This script's design is to install docker with an association to the RecSetup.sh script. It Should be a container to help limit the processing power fot powerful programs such as clamav snort and updates.
# INSTALLATION
 sudo apt-get purge -y lxc-docker* && sudo apt-get -y purge docker.io*
 sudo apt-get update -y && sudo apt-get install -y apt-transport-https ca-certificates
 sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
