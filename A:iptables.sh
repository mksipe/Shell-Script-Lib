#!/bin/bash

echo
echo -e "\e[1;95m-------------------------[iptables audit in progress]-------------------------"

installed=$(dpkg-query -W -f='${Status}' iptables 2>/dev/null | grep -c "ok installed")
if [ $installed -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking iptables installation\t\t\t\t\t\t\t$status"

installed=$(dpkg-query -W -f='${Status}' iptables-persistent 2>/dev/null | grep -c "ok installed")
if [ $installed -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking iptables-persistent installation\t\t\t\t\t\t$status"

service=$(systemctl is-enabled netfilter-persistent >/dev/null 2>&1 && echo 1 || echo 0)
if [ $service -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if netfilter-persistent service is enabled\t\t\t\t\t$status"

nullpackets=$(iptables-save | grep -cP '^-A\sINPUT\s-p\stcp\s-m\stcp\s--tcp-flags\sFIN,SYN,RST,PSH,ACK,URG\sNONE\s-j\sDROP$')
if [ $nullpackets -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if null packets are blocked\t\t\t\t\t\t$status"

nullpackets=$(iptables-save | grep -cP '^-A\sINPUT\s-p\stcp\s-m\stcp\s!\s--tcp-flags\sFIN,SYN,RST,ACK\sSYN\s-m\sstate\s--state\sNEW\s-j\sDROP$')
if [ $nullpackets -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if syn-flood attacks are blocked\t\t\t\t\t\t$status"

nullpackets=$(iptables-save | grep -cP '^-A\sINPUT\s-p\stcp\s-m\stcp\s--tcp-flags\sFIN,SYN,RST,PSH,ACK,URG FIN,SYN,RST,PSH,ACK,URG\s-j\sDROP$')
if [ $nullpackets -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if XMAS packets are blocked\t\t\t\t\t\t$status"

nullpackets=$(iptables-save | grep -cP '^-A\sINPUT\s-i\slo\s-j\sACCEPT$')
if [ $nullpackets -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if internal traffic on the loopback device is allowed\t\t\t$status"

nullpackets=$(iptables-save | grep -cP '^-A\sINPUT\s-p\stcp\s-m\stcp\s--dport\s22\s-j\sACCEPT$')
if [ $nullpackets -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if ssh access is allowed\t\t\t\t\t\t\t$status"

nullpackets=$(iptables-save | grep -cP '^-A INPUT -m state --state RELATED,ESTABLISHED -j ACCEPT$')
if [ $nullpackets -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if established connections are allowed\t\t\t\t\t$status"

nullpackets=$(iptables-save | grep -cP '^:OUTPUT\sACCEPT.*')
if [ $nullpackets -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if outgoing connections are allowed\t\t\t\t\t$status"

nullpackets=$(iptables-save | grep -cP '^:INPUT DROP.*')
if [ $nullpackets -eq 0 ];
then
  status="\e[91m[ BAD ]"
  #exit
else
  status="\e[92m[ GOOD ]"
fi
echo -e "\e[39m[*] Checking if default firewall policy is deny\t\t\t\t\t\t$status"

echo -e "\033[0m"

echo [SUCCESS] iptables audit ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/data/MK3S.log