#!/bin/sh
setenforce 1
echo "
# This file controls the state of SELinux on the system.
# SELINUX= can take one of these three values:
# enforcing - SELinux security policy is enforced.
# permissive - SELinux prints warnings instead of enforcing.
# disabled - No SELinux policy is loaded.
SELINUX=enforcing
" > /etc/selinux/config
apt install apparmor -y 
sudo /etc/init.d/apparmor start