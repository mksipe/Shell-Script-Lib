#!/bin/sh

sudo touch System\ Information\ File.txt
sudo chmod 755 System\ Information\ File.txt
sudo touch SIHistory.txt
chmod 755 SIHistory.txt
cat System\ Information\ File.txt >> SIHistory.txt
cat /dev/null > System\ Information\ File.txt
now=$(date)
ut=$(uptime)
un=$(uname -a)
fe=$(free)
stat=$(vmstat)
disk_space=$(df)
H=$(hostname)
IP=$(hostname -i)
bit=$(lscpu)
echo "Gathering System Volumes"
echo "_________________________________________________________________________________________________________________" >> System\ Information\ File.txt
echo "-----------------------------------------------------------------------------------------------------------------
System Host:" >> System\ Information\ File.txt
echo "$H" >> System\ Information\ File.txt
echo "-----------------------------------------------------------------------------------------------------------------
You'r IP address is:" >> System\ Information\ File.txt
echo "$IP" >> System\ Information\ File.txt
echo "-----------------------------------------------------------------------------------------------------------------
Latest Check was on:" >> System\ Information\ File.txt
echo "$now" >> System\ Information\ File.txt
echo "-----------------------------------------------------------------------------------------------------------------
The System Uptime is currently:" >> System\ Information\ File.txt
echo "$ut" >> System\ Information\ File.txt
echo "-----------------------------------------------------------------------------------------------------------------
The System OS is:" >> System\ Information\ File.txt
echo "$un" >> System\ Information\ File.txt
echo "-----------------------------------------------------------------------------------------------------------------
Here is the System's Free Memory:" >> System\ Information\ File.txt
echo "$fe" >> System\ Information\ File.txt
echo "-----------------------------------------------------------------------------------------------------------------
Here is a summary of all of the System's activity:" >> System\ Information\ File.txt
echo "$stat" >> System\ Information\ File.txt
echo "-----------------------------------------------------------------------------------------------------------------
This is the avaliable amount of space on your disk:" >> System\ Information\ File.txt
echo "$disk_space" >> System\ Information\ File.txt
echo "-----------------------------------------------------------------------------------------------------------------
Here is your CPU information:" >> System\ Information\ File.txt
echo "$bit" >> System\ Information\ File.txt
echo "Done"
echo "|                                                                                                                |" >> System\ Information\ File.txt
