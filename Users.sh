#!/bin/sh
cat /etc/passwd | grep bash
cat /etc/group | grep root adm user
apt install lightdm -y 
echo "allow-guest=false" | tee -a /etc/lightdm/lightdm.conf