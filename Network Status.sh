#!/bin/sh

Dns=$(cat /etc/resolv.conf)
DGW=$(netstat -nr)
IP=$(hostname -I)
date=$(date -u)
H=$(hostname)
MAC=$(ifconfig -a)

sudo touch Network\ Information.txt
chmod 755 Network\ Information.txt
sudo touch Network_Info_History.txt
cat Network\ Information.txt >> Network_Info_History.txt
cat /dev/null > Network\ Information.txt

sudo apt install nmap -y

echo "Fetching Network Information"
echo "*----------$date----------*" >> Network\ Information.txt
echo "----------IP Address----------" >> Network\ Information.txt
echo "$IP" >> Network\ Information.txt

echo "----------Hostname----------" >> Network\ Information.txt
echo "$H" >> Network\ Information.txt

echo "----------MAC Addresses----------" >> Network\ Information.txt
echo "$MAC" >> Network\ Information.txt

echo "----------DNS Addresses----------" >> Network\ Information.txt
echo "$Dns" >> Network\ Information.txt

echo "----------Default Gateway----------" >> Network\ Information.txt
echo "$DGW" >> Network\ Information.txt

echo "Enter your Ip Address without the final number. (ex WRONG: 10.192.168.1 CORRECT 10.192.168.)" 
hostname -I

read NIP 

Ill=$(nmap -sP $NIP*) 

echo "----------Hosts----------" >> Network\ Information.txt
echo "$Ill" >> Network\ Information.txt

echo "Done. Created a file with your network information included." 
