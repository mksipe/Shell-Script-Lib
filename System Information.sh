#!/bin/sh

now=$(date)
ut=$(uptime)
un=$(uname -a)
fe=$(free -m)
stat=$(vmstat)
disk_space=$(df -h)
H=$(hostname)
IP=$(hostname -I)
bit=$(lscpu)
krt=$(/sbin/route -n)
nstt=$(netstat -lntpa)
lsb=$(lsb_release -a)
lsrb=$(last reboot)
kdh=$(dmesg)
bat=$(cat /proc/cpuinfo)
minf-$(cat /proc/meminfo)
mtot=$(grep MemTotal /proc/meminfo)
cdv=$(cat /proc/devices)
ll=$(last)
disk=$(df -h)
dirs=$(du -ks)
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
echo "$minf" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$mtot" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Here is a summary of all of the System's activity:"  | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$stat" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
This is the avaliable amount of space on your disk:" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$disk_space"  | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$disk" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$dirs" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Here is your CPU information:" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$bit" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$bat" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Here is your kernel routing table:" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$krt" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Active port connections" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "$nstt" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
LSB distribution:"
echo "$lsb" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Last Reboot:"
echo "$lsrb" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Kernel Detected Hardware:"
echo "$kdh" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Connected Devices:"
echo "$cdv" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------
Last Logons:"
echo "$ll" | tee -a /bin/lib/sh/MK3S/data/SYSINF.txt
echo "-----------------------------------------------------------------------------------------------------------------"