#!/bin/sh

echo "Preventing IP, ICMP, SPR, SR, SYN, Log Martian, and ping spoofing."

sudo echo "# IP Spoofing protection" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.conf.all.rm_filter = 1" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.conf.default.rp_filter = 1" | sudo tee -a /etc/sysctl.conf
sudo echo "
" | sudo tee -a /etc/sysctl.conf
sudo echo "# Ignore ICMP broadcast requests" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" | sudo tee -a /etc/sysctl.conf
sudo echo "
" | sudo tee -a /etc/sysctl.conf
sudo echo "# Disable source packet routing" | sudo tee -a /etc/sysctl.config
sudo echo "net.ipv4.conf.all.accept_source_route = 0" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv6.conf.all.accept_source_route = 0" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.conf.default.accept_source_route = 0" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv6.conf.default.accept_source_route = 0" | sudo tee -a /etc/sysctl.conf
sudo echo "
" | sudo tee -a /etc/sysctl.conf
sudo echo "#ignore send redirects" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.conf.all.send_redirects = 0" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.conf.default.send_redirects = 0" | sudo tee -a /etc/sysctl.conf
sudo echo "
" | sudo tee -a /etc/sysctl.conf
sudo echo "#Block syn attacks" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.tcp_syncookies = 1" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.tcp_max_syn_backlog = 2048" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.tcp_synack_retries = 2" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.tcp_syn_retries = 5" | sudo tee -a /etc/sysctl.conf
sudo echo "
" | sudo tee -a /etc/sysctl.conf
sudo echo "#log Martians" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.conf.all.log_martians = 1" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" | sudo tee -a /etc/sysctl.conf
sudo echo "#Ignore ICMP redirects" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.conf.all.accept_redirects = 0" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv6.conf.all.accept_redirects = 0" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv4.conf.default.accept_redirects = 0" | sudo tee -a /etc/sysctl.conf
sudo echo "net.ipv6.conf.default.accept_redirects = 0" | sudo tee -a /etc/sysctl.conf
sudo echo "
" | sudo tee -a /etc/sysctl.conf
sudo echo "#Ignore Directed pings"
sudo echo "net.ipv4.icmp_echo_ignore_all = 1" | sudo tee -a /etc/sysctl.conf
sudo echo "kernel.dmesg_restrict = 1" | sudo tee -a /etc/sysctl.conf
echo "Unauthorized users must log off now! all unauthorized userts with access will be punished to the full extent of the law." | sudo tee -a /etc/issue.net
sudo sed -i '/PermitRootLogin yes/c\PermitRootLogin no' | sudo tee -a /etc/ssh/sshd_config
sudo sed -i '/Protocol/c\Protocol 2' | sudo tee -a /etc/ssh/sshd_config
sudo sed -i 'PermitEmptyPasswords yes/c\PermitEmptyPasswords no' | sudo tee -a /etc/ssh/sshd_config
sudo sed -i 'LoginGraceTime/c\LoginGraceTime 1m' | sudo tee -a /etc/ssh/sshd_config
sudo sysctl -p
sudo echo 1 | sudo tee -a /proc/sys/net/ipv4/tcp_syncookies
sudo echo 1 | sudo tee -a /proc/sys/net/ipv4/conf/all/rp_filter
sudo iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
sudo iptables -A INPUT -p tcp --dport ssh -j ACCEPT
sudo iptables -A INPUT -p tcp --dport 80 -j ACCEPT
sudo iptables -I INPUT 5 -m limit --limit 5/min -j LOG --log-prefix "iptables denied: " --log-level 7
sudo sh -c "iptables-save > /etc/iptables.rules"
echo "Done"
echo "This script alters data in the sysctl.conf file. It can only be ran once. Permissions to this file have changed."
chmod 444 Netspoof-Prevention.sh 