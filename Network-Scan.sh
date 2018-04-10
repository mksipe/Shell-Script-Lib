#!/bin/sh
spinner () {
    local pid=$!
    local delay=0.25
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}
ip=$(hostname -I)
echo "Starting Network Scan. Searching for all hosts on network and doing a port scan. This will take a while."
echo "enter your IP address without its last digit. Replace it with an asterisk. ex 127.0.0.1 = 127.0.0.*"
echo "your ip address is ($ip)"
read ip
nmap -p- -sS -sU -A -sV --version-intensity 5 -oN Your-Network.txt $ip & spinner 
echo "Done"