#!/bin/sh
ip=$(hostname -I)
echo "Starting Network Scan. Searching for all hosts on network and doing a port scan."
echo "enter your IP address without its last digit. Replace it with an asterisk. ex 127.0.0.1 = 127.0.0.*"
echo "your ip address is ($ip)"
read ip
nmap -p- -sS -sU -A -sV --version-intensity 5 -oN Your-Network.txt $ip
echo "Done"