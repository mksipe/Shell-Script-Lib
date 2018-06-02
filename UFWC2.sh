#!/bin/sh
sudo apt install ufw -y
ufw disable
ufw reset
ufw allow 80 
ufw reject telnet
ufw allow out 22
ufw allow 21
ufw allow 3307
ufw allow 53
ufw deny 23
ufw allow 137
ufw allow 138
ufw allow 139
ufw allow 445
ufw deny 1080
ufw deny 5554
ufw deny 2745
ufw deny 3127
ufw deny 4444
ufw deny 8866
ufw deny 9898
ufw deny 9988
ufw deny 12345
ufw deny 27374
ufw deny 31337
ufw allow 8200
#!/bin/sh
touch defalultUFW.txt
cp /etc/ufw/before.rules >> defalultUFW.txt
mv defalultUFW.txt /bin/lib/sh
-A ufw-before-input -p icmp --icmp-type echo-request -j DROP >> /etc/ufw/before.rules
sudo ufw disable
sudo ufw enable
iptables -A OUTPUT -p icmp -o eth0 -j ACCEPT          
iptables -A INPUT -p icmp --icmp-type echo-reply -s 0/0 -i eth0 -j ACCEPT     
iptables -A INPUT -p icmp --icmp-type destination-unreachable -s 0/0 -i eth0 -j ACCEPT  
iptables -A INPUT -p icmp --icmp-type time-exceeded -s 0/0 -i eth0 -j ACCEPT       
iptables -A INPUT -p icmp -i eth0 -j DROP
echo 1 | sudo tee /proc/sys/net/ipv4/icmp_echo_ignore_all
echo "net.ipv4.icmp_echo_ignore_all = 1" | sudo tee /etc/sysctl.conf
sudo sysctl -p
ufw enable