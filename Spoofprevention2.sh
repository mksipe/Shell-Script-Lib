#!/bin/sh
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
sudo echo "net.ipv4.conf.default.send_redirects = 0" >> /etc/sysctl.conf
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
sudo echo "kernel.dmesg_restrict = 1" >> /etc/sysctl.conf
echo "Unauthorized users must log off now! all unauthorized userts with access will be punished to the full extent of the law." | sudo tee -a /etc/issue.net
sudo sed -e '/PermitRootLogin yes/c\PermitRootLogin no' | sudo tee -a /etc/ssh/sshd_config
sudo sed -e '/Protocol/c\Protocol 2' | sudo tee -a /etc/ssh/sshd_config
sudo sed -e 'PermitEmptyPasswords yes/c\PermitEmptyPasswords no' | sudo tee -a /etc/ssh/sshd_config
sudo sed -e 'LoginGraceTime/c\LoginGraceTime 1m' | sudo tee -a /etc/ssh/sshd_config
sudo sysctl -p
sudo echo 1 | sudo tee -a /proc/sys/net/ipv4/tcp_syncookies
sudo echo 1 | sudo tee -a /proc/sys/net/ipv4/conf/all/rp_filter

# Disable IP forwarding
sed -i "s/#net.ipv4.ip_forward=1/net.ipv4.ip_forward=0/" /etc/sysctl.conf
sysctl -w net.ipv4.ip_forward=0

# Disable packet redirect sending
sed -i "/net.ipv4.conf.all.send_redirects.*/s/^#//g" /etc/sysctl.conf
echo "net.ipv4.conf.default.send_redirects=0" >> /etc/sysctl.conf
sysctl -w net.ipv4.conf.all.send_redirects=0
sysctl -w net.ipv4.conf.default.send_redirects=0

# Disable source routed packets
sed -i "/net.ipv4.conf.all.accept_source_route.*/s/^#//g" /etc/sysctl.conf
echo "net.ipv4.conf.default.accept_source_route=0" >> /etc/sysctl.conf
sysctl -w net.ipv4.conf.all.accept_source_route=0
sysctl -w net.ipv4.conf.default.accept_source_route=0

# Disable ICMP redirects
sed -i "/net.ipv4.conf.all.accept_redirects.*/s/^#//g" /etc/sysctl.conf
echo "net.ipv4.conf.default.accept_redirects=0" >> /etc/sysctl.conf
sysctl -w net.ipv4.conf.all.accept_redirects=0
sysctl -w net.ipv4.conf.default.accept_redirects=0

# Disable secure ICMP redirects
sed -i "/ net.ipv4.conf.all.secure_redirects.*/s/^# //g" /etc/sysctl.conf
echo "net.ipv4.conf.default.secure_redirects=0" >> /etc/sysctl.conf
sysctl -w net.ipv4.conf.all.secure_redirects=0
sysctl -w net.ipv4.conf.default.secure_redirects=0

# Log suspicious packets
sed -i "/net.ipv4.conf.all.log_martians.*/s/^#//g" /etc/sysctl.conf
echo "net.ipv4.conf.default.log_martians=1" >> /etc/sysctl.conf
sysctl -w net.ipv4.conf.all.log_martians=1
sysctl -w net.ipv4.conf.default.log_martians=1

# Ignore broadcast ICMP requests
echo "net.ipv4.icmp_echo_ignore_broadcasts=1" >> /etc/sysctl.conf
sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1

# Enable Bad Error Message Protection
echo "net.ipv4.icmp_ignore_bogus_error_responses=1" >> /etc/sysctl.conf
sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1

# Enable RFC-recommended Source Route Validation
sed -i "/net.ipv4.conf.all.rp_filter.*/s/^#//g" /etc/sysctl.conf
sed -i "/net.ipv4.conf.default.rp_filter.*/s/^#//g" /etc/sysctl.conf
sysctl -w net.ipv4.conf.all.rp_filter=1
sysctl -w net.ipv4.conf.default.rp_filter=1

# Enable TCP SYN Cookies
sed -i "/net.ipv4.tcp_syncookies.*/s/^#//g" /etc/sysctl.conf
sysctl -w net.ipv4.tcp_syncookies=1

# Install TCP Wrappers
apt -y install tcpd

chown root:root /etc/hosts.allow
chmod 644 /etc/hosts.allow
chown root:root /etc/hosts.deny
chmod 644 /etc/hosts.deny

sysctl -w net.ipv4.route.flush=1