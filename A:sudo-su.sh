#!/bin/bash


echo
echo -e "\e[1;95m-------------------------[sudo/su audit in progress]-------------------------"

installed=$(dpkg-query -W -f='${Status}' sudo 2>/dev/null | grep -c "ok installed")
if [ $installed -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking sudo installation\t\t\t\t\t\t\t\t$status"

groupwheel=$(getent group wheel 2>/dev/null | grep -c "wheel")
if [ $groupwheel -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if wheel group exists\t\t\t\t\t\t\t$status"

userexists=$(getent passwd $1 2>/dev/null | grep -c $1)
if [ $userexists -eq 0 ];
then
  status="\e[91m[ BAD ]"
  echo -e "\e[39m[*] Checking if user exists\t\t\t\t\t\t\t\t$status\e[39m"
else
  status="\e[92m[ GOOD ]"
  echo -e "\e[39m[*] Checking if user exists\t\t\t\t\t\t\t\t$status\e[39m"
  
  userwheel=$(groups $1|grep -c "\bwheel\b")
  if [ $userwheel -eq 0 ];
  then
    status="\e[91m[ BAD ]"
    #exit
  else
    status="\e[92m[ GOOD ]"
  fi
echo -e "\e[39m[*] Checking if $1 is in group wheel\t\t\t\t\t\t\t$status"
fi

suwheel=$(grep -cP '^auth\s+required\s+pam_wheel\.so\s+group=wheel\s+debug$' /etc/pam.d/su)
if [ $suwheel -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if su usage is restricted to wheel group only\t\t\t\t$status"

if [ ! -f /etc/sudoers ]; 
then
  status="\e[91m[ BAD ]"
  echo -e "\e[39m[*] Checking if sudo usage is restricted to wheel group only\t\t\t\t$status\e[39m"
  exit
fi

sudowheel=$(grep -cP '^%wheel\s+ALL=\(ALL:ALL\)\s+ALL$' /etc/sudoers)
if [ $sudowheel -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if sudo usage is restricted to wheel group only\t\t\t\t$status"

echo -e "\033[0m"

echo [SUCCESS] sudo su audit ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/data/MK3S.log