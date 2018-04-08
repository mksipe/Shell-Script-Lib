#!/bin/sh

echo "Preventing IP, ICMP, SPR, SR, SYN, Log Martian, and ping spoofing."

sudo echo "# IP Spoofing protection" >> /etc/sysctl.conf
sudo echo "net.ipv4.conf.all.rm_filter = 1" >> /etc/sysctl.conf
sudo echo "net.ipv4.conf.default.rp_filter = 1" >> /etc/sysctl.conf
sudo echo "
" >> /etc/sysctl.conf
sudo echo "# Ignore ICMP broadcast requests" >> /etc/sysctl.conf
sudo echo "net.ipv4.icmp_echo_ignore_broadcasts = 1" >> /etc/sysctl.conf
sudo echo "
" >> /etc/sysctl.conf
sudo echo "# Disable source packet routing" >> /etc/sysctl.config
sudo echo "net.ipv4.conf.all.accept_source_route = 0" >> /etc/sysctl.conf
sudo echo "net.ipv6.conf.all.accept_source_route = 0" >> /etc/sysctl.conf
sudo echo "net.ipv4.conf.default.accept_source_route = 0" >> /etc/sysctl.conf
sudo echo "net.ipv6.conf.default.accept_source_route = 0" >> /etc/sysctl.conf
sudo echo "
" >> /etc/sysctl.conf
sudo echo "#ignore send redirects" >> /etc/sysctl.conf
sudo echo "net.ipv4.conf.all.send_redirects = 0" >> /etc/sysctl.conf
sudo echo "net.ipv4.conf.default.send_redirects = 0" >>/etc/sysctl.conf
sudo echo "
" >> /etc/sysctl.conf
sudo echo "#Block syn attacks" >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_syncookies = 1" >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_max_syn_backlog = 2048" >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_synack_retries = 2" >> /etc/sysctl.conf
sudo echo "net.ipv4.tcp_syn_retries = 5" >> /etc/sysctl.conf
sudo echo "
" >> /etc/sysctl.conf
sudo echo "#log Martians" >> /etc/sysctl.conf
sudo echo "net.ipv4.conf.all.log_martians = 1" >> /etc/sysctl.conf
sudo echo "net.ipv4.icmp_ignore_bogus_error_responses = 1" >> /etc/sysctl.conf
sudo echo "#Ignore ICMP redirects" >> /etc/sysctl.conf
sudo echo "net.ipv4.conf.all.accept_redirects = 0" >> /etc/sysctl.conf
sudo echo "net.ipv6.conf.all.accept_redirects = 0" >> /etc/sysctl.conf
sudo echo "net.ipv4.conf.default.accept_redirects = 0" >> /etc/sysctl.conf
sudo echo "net.ipv6.conf.default.accept_redirects = 0" >> /etc/sysctl.conf
sudo echo "
" >> /etc/sysctl.conf
sudo echo "#Ignore Directed pings"
sudo echo "net.ipv4.icmp_echo_ignore_all = 1" >> /etc/sysctl.conf
sudo echo kernel.dmesg_restrict = 1 >> /etc/sysctl.conf
echo "Unauthorized users must log off now! all unauthorized userts with access will be punished to the full extent of the law." >> /etc/issue.net
sudo sed -i '/PermitRootLogin yes/c\PermitRootLogin no' >> /etc/ssh/sshd_config
sudo sed -i '/Protocol/c\Protocol 2' >> /etc/ssh/sshd_config
sudo sed -i 'PermitEmptyPasswords yes/c\PermitEmptyPasswords no' >> /etc/ssh/sshd_config
sudo sed -i 'LoginGraceTime/c\LoginGraceTime 1m' >> /etc/ssh/sshd_config
sudo sysctl -p
echo "Done"