#!/bin/bash


echo
echo -e "\e[1;95m-------------------------[services audit in progress]-------------------------"


service=$(systemctl is-active avahi-daemon >/dev/null 2>&1 && echo 1 || echo 0)
if [ $service -eq 1 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if avahi-daemon service is disabled\t\t\t\t\t$status"

service=$(systemctl is-active cups >/dev/null 2>&1 && echo 1 || echo 0)
if [ $service -eq 1 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if cups service is disabled\t\t\t\t\t\t$status"

service=$(systemctl is-active rpcbind >/dev/null 2>&1 && echo 1 || echo 0)
if [ $service -eq 1 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if rpcbind service is disabled\t\t\t\t\t\t$status"

echo -e "\033[0m"

echo [SUCCESS] services audit ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/data/MK3S.log