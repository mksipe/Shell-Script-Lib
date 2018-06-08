#!/bin/sh
touch defalultUFW.txt
cp /etc/ufw/before.rules >> defalultUFW.txt
mv defalultUFW.txt /bin/lib/sh
iptables -A ufw-before-input -p icmp --icmp-type echo-request -j DROP >> /etc/ufw/before.rules
sudo ufw disable
sudo ufw enable
iptables -A OUTPUT -p icmp -o eth0 -j ACCEPT          
iptables -A INPUT -p icmp --icmp-type echo-reply -s 0/0 -i eth0 -j ACCEPT     
iptables -A INPUT -p icmp --icmp-type destination-unreachable -s 0/0 -i eth0 -j ACCEPT  
iptables -A INPUT -p icmp --icmp-type time-exceeded -s 0/0 -i eth0 -j ACCEPT       
iptables -A INPUT -p icmp -i eth0 -j DROP
echo 1 | sudo tee /proc/sys/net/ipv4/icmp_echo_ignore_all
echo "net.ipv4.icmp_echo_ignore_all = 1" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
