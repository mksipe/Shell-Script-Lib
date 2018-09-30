#!/bin/sh

now=$(date)
ut=$(uptime)
un=$(uname -a)
fe=$(free)
stat=$(vmstat)
disk_space=$(df -h)
H=$(hostname)
IP=$(hostname -I)
bit=$(lscpu)
krt=$(/sbin/route -n)
nstt=$(netstat -lntpa)
touch /bin/lib/sh/MK3S/data/SYSINF.txt
sudo cat /dev/null > /bin/lib/sh/MK3S/data/SYSINF.txt
echo "Gathering System Volumes" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "_________________________________________________________________________________________________________________" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
System Host:" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$H" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
You'r IP address is:" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$IP" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Latest Check was on:" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$now" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
The System Uptime is currently:" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$ut" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
The System OS is:" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$un" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Here is the System's Free Memory:" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$fe" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Here is a summary of all of the System's activity:"  | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$stat" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
This is the avaliable amount of space on your disk:" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$disk_space"  | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Here is your CPU information:" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$bit"  | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Here is your kernel routing table" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$krt" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Active port connections" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$nstt" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt