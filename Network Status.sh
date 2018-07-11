#!/bin/sh

Dns=$(cat /etc/resolv.conf | grep name)
DGW=$(netstat -nr)
IP=$(hostname -I)
date=$(date -u)
H=$(hostname)
MAC=$(ifconfig -a)

sudo touch Network\ Information.txt
chmod 755 Network\ Information.txt
sudo touch Network_Info_History.txt
cat Network\ Information.txt | tee -a Network_Info_History.txt
cat /dev/null > Network\ Information.txt

echo "Fetching Network Information"
echo "*----------$date----------*" | tee -a Network\ Information.txt
echo "----------IP Address----------" | tee -a Network\ Information.txt
echo "$IP" | tee -a Network\ Information.txt

echo "----------Hostname----------" | tee -a Network\ Information.txt
echo "$H" | tee -a Network\ Information.txt

echo "----------MAC Addresses----------" | tee -a Network\ Information.txt
echo "$MAC" | tee -a Network\ Information.txt

echo "----------DNS Addresses----------" | tee -a Network\ Information.txt
echo "$Dns" | tee -a Network\ Information.txt

echo "----------Default Gateway----------" | tee -a Network\ Information.txt
echo "$DGW" | tee -a Network\ Information.txt

echo "Enter your Ip Address without the final number. (ex WRONG: 10.192.168.1 CORRECT 10.192.168.)" 
hostname -I

read NIP 

Ill=$(nmap -sP $NIP*) 

echo "----------Hosts----------" | tee -a Network\ Information.txt
echo "$Ill" | tee -a Network\ Information.txt

echo "Done. Created a file with your network information included." 
