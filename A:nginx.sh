#!/bin/bash


echo
echo -e "\e[1;95m-------------------------[nginx audit in progress]-------------------------"

installed=$(dpkg-query -W -f='${Status}' nginx 2>/dev/null | grep -c "ok installed")
if [ $installed -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking nginx installation\t\t\t\t\t\t\t\t$status"

signature=$(grep -cP '\s+server_tokens\soff;$' /etc/nginx/nginx.conf)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if nginx version is hidden\t\t\t\t\t\t\t$status"

signature=$(grep -cP '^etag\soff;$' /etc/nginx/nginx.conf)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if ETags is removed\t\t\t\t\t\t\t$status"

indexmod=$(cat /var/www/html/index.html|wc -w)
if [ $indexmod -ne 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if index.html is empty\t\t\t\t\t\t\t$status"

signature=$(grep -cP '^ssl_ciphers ECDHE-RSA-AES256-GCM-SHA512:DHE-RSA-AES256-GCM-SHA512:ECDHE-RSA-AES256-GCM-SHA384:DHE-RSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-SHA384;$' /etc/nginx/nginx.conf)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if strong cipher suites are enabled\t\t\t\t\t$status"

signature=$(grep -cP '^ssl_session_timeout 5m;$' /etc/nginx/nginx.conf)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if ssl session timeout is set\t\t\t\t\t\t$status"

signature=$(grep -cP '^ssl_session_cache shared:SSL:10m;$' /etc/nginx/nginx.conf)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if ssl session cache is set\t\t\t\t\t\t$status"

signature=$(grep -cP '^proxy_cookie_path / \"/; secure; HttpOnly\";$' /etc/nginx/sites-available/default)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if HttpOnly and Secure flags are enabled\t\t\t\t\t$status"

signature=$(grep -cP '^add_header X-Frame-Options DENY;$' /etc/nginx/sites-available/default)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if Clickjacking Attack Protection is enabled\t\t\t\t$status"

signature=$(grep -cP '^add_header X-XSS-Protection \"1; mode=block\";$' /etc/nginx/sites-available/default)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if XSS Protection is enabled\t\t\t\t\t\t$status"

signature=$(grep -cP '^add_header Strict-Transport-Security \"max-age=31536000; includeSubdomains;\";$' /etc/nginx/sites-available/default)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if Enforce secure connections is enabled\t\t\t\t\t$status"

signature=$(grep -cP '^add_header X-Content-Type-Options nosniff;$' /etc/nginx/sites-available/default)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if MIME sniffing Protection is enabled\t\t\t\t\t$status"

signature=$(grep -cP "^add_header Content-Security-Policy \"default-src 'self';\";$" /etc/nginx/sites-available/default)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if Cross-site scripting and injections Protection is enabled\t\t$status"

signature=$(grep -cP '^add_header X-Robots-Tag none;$' /etc/nginx/sites-available/default)
if [ $signature -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if X-Robots-Tag is set\t\t\t\t\t\t\t$status"

echo -e "\033[0m"

echo [SUCCESS] nginx audit ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/data/MK3S.log