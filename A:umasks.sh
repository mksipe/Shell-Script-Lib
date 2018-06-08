#!/bin/bash


echo
echo -e "\e[1;95m-------------------------[umask audit in progress]-------------------------"

umasklogin=$(grep -cP '^UMASK\s+077$' /etc/login.defs)
if [ $umasklogin -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if umask has been set for users\t\t\t\t\t\t$status"

umasklogin=$(grep -cP '^umask\s+077$' /root/.bashrc)
if [ $umasklogin -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if umask has been set for root\t\t\t\t\t\t$status"

echo -e "\033[0m"

echo [SUCCESS] umasks audit ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/data/MK3S.log