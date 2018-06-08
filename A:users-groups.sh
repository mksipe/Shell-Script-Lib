#!/bin/bash


echo
echo -e "\e[1;95m-------------------------[users and groups audit in progress]-------------------------"

signature=$(grep -cP '^PASS_MAX_DAYS\s+90$' /etc/login.defs)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking Maximum number of days of password usage\t\t\t\t\t$status"

signature=$(grep -cP '^PASS_MIN_DAYS\s+5$' /etc/login.defs)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking Minimum number of days between password changes\t\t\t\t$status"

signature=$(grep -cP '^PASS_WARN_AGE\s+10$' /etc/login.defs)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking Number of days warning before password expiration\t\t\t\t$status"

signature=$(useradd -D | grep -cP '^INACTIVE=30$')
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking users locking after inactivity\t\t\t\t\t\t$status"

signature=$(id -gn root| grep -cP '^root$')
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking root primary group\t\t\t\t\t\t\t\t$status"

installed=$(dpkg-query -W -f='${Status}' libpam-cracklib 2>/dev/null | grep -c "ok installed")
if [ $installed -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking libpam-cracklib installation\t\t\t\t\t\t$status"

signature=$(grep -cP '.*minlen=14.*' /etc/pam.d/common-password)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking minimum password length\t\t\t\t\t\t\t$status"

signature=$(grep -cP '.*reject_username.*' /etc/pam.d/common-password)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if username in password is allowed\t\t\t\t\t\t$status"

signature=$(grep -cP '.*minclass=4.*' /etc/pam.d/common-password)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi

signature=$(grep -cP '.*dcredit=-1 ucredit=-1 ocredit=-1 lcredit=-1.*' /etc/pam.d/common-password)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if Password complexity class\t\t\t\t\t\t$status"

signature=$(grep -cP '.*maxrepeat=2.*' /etc/pam.d/common-password)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if passwords with 2 same consecutive characters are rejected\t\t$status"

signature=$(grep -cP '.*remember=24.*' /etc/pam.d/common-password)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking last 24 passwords is enabled\t\t\t\t\t\t$status"

signature=$(grep -cP '.*auth required pam_tally2\.so onerr=fail audit silent deny=5 unlock_time=1200.*' /etc/pam.d/login)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if accounts locked out after unsuccessful login attempts\t\t\t$status"

signature=$(grep -cP '^-:wheel:ALL EXCEPT LOCAL.*' /etc/security/access.conf)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if non-local logins to privileged accounts are not allowed\t\t\t$status"

signature=$(grep -cP '.*delay=10000000.*' /etc/pam.d/login)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking delay time between login prompts\t\t\t\t\t\t$status"

echo -e "\033[0m"
echo [SUCCESS] users and groups audit ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/data/MK3S.log