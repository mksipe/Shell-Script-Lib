#!/bin/sh
# Set /etc/ssh/sshd_config ownership and access permissions
chown root:root /etc/ssh/sshd_config
chmod 600 /etc/ssh/sshd_config
# Change Port
sed -i "s/#Port 22/Port 62111/g" /etc/ssh/sshd_config
# Protocol 2
echo "Protocol 2" >> /etc/ssh/sshd_config
# Set SSH LogLevel to INFO
sed -i "/LogLevel.*/s/^#//g" /etc/ssh/sshd_config
# Set SSH MaxAuthTries to 3
sed -i "s/#MaxAuthTries 6/MaxAuthTries 3/g" /etc/ssh/sshd_config
sed -i "s/MaxAuthTries 6/MaxAuthTries 3/g" /etc/ssh/sshd_config
# Enable SSH IgnoreRhosts
sed -i "/IgnoreRhosts.*/s/^#//g" /etc/ssh/sshd_config
# Disable SSH HostbasedAuthentication
sed -i "/HostbasedAuthentication.*no/s/^#//g" /etc/ssh/sshd_config
# Disable SSH root login
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin no/g" /etc/ssh/sshd_config
sed -i "s/PermitRootLogin prohibit-password/PermitRootLogin no/g" /etc/ssh/sshd_config
sed -i "s/#PermitRootLogin yes/PermitRootLogin no/g" /etc/ssh/sshd_config
sed -i "s/#PermitRootLogin Yes/PermitRootLogin no/g" /etc/ssh/sshd_config
sed -i "s/#PermitRootLogin YES/PermitRootLogin no/g" /etc/ssh/sshd_config
# Deny Empty Passwords
sed -i "/PermitEmptyPasswords.*no/s/^#//g" /etc/ssh/sshd_config
# Deny Users to set environment options through the SSH daemon
sed -i "/PermitUserEnvironment.*no/s/^#//g" /etc/ssh/sshd_config
# Allow only approved ciphers
echo "Ciphers aes256-ctr" >> /etc/ssh/sshd_config
# Set MAC
echo "MACs hmac-sha2-512-etm@openssh.com,hmac-sha2-256-etm@openssh.com,hmac-sha2-512,hmac-sha2-256" >> /etc/ssh/sshd_config
# Configure SSH Idle Timeout Interval
sed -i "s/#ClientAliveInterval 0/ClientAliveInterval 300/g" /etc/ssh/sshd_config
sed -i "s/#ClientAliveCountMax 3/ClientAliveCountMax 0/g" /etc/ssh/sshd_config
sed -i "s/ClientAliveInterval 0/ClientAliveInterval 300/g" /etc/ssh/sshd_config
sed -i "s/ClientAliveCountMax 3/ClientAliveCountMax 0/g" /etc/ssh/sshd_config
# Set Banner
sed -i "s/#Banner none/Banner \/etc\/issue\.net/g" /etc/ssh/sshd_config
echo "Welcome" > /etc/issue.net
# Allow wheel group use ssh
#echo "AllowGroups wheel" >> /etc/ssh/sshd_config
# Disable X11 forwarding
sed -i "s/X11Forwarding yes/#X11Forwarding yes/g" /etc/ssh/sshd_config
service sshd restart