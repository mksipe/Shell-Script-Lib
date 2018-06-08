#!/bin/sh
v=$(cat /etc/debian_version)
echo "deb https://deb.torproject.org/torproject.org stretch main" | sudo tee -a /etc/apt/sources.list
echo "deb-src https://deb.torproject.org/torproject.org stretch main" | sudo tee -a /etc/apt/sources.list
sudo add-apt-repository ppa:webupd8team/tor-browser -y 
sudo apt-get install tor-browser -y 
apt install torsocks
apt install tor-geoipdb
deb https://deb.torproject.org/torproject.org $V main
gpg --keyserver keys.gnupg.net --recv 886DDD89
gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -
apt-get install deb.torproject.org-keyring
apt install tor -y
apt install yum -y
sudo /etc/init.d/tor start
ss -aln | grep 9050
sudo apt-get install vidalia