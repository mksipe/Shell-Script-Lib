#!/bin/sh

	#Backup
	mkdir /iptables/
	touch /iptables/rules.v4.bak
	touch /iptables/rules.v6.bak
	iptables-save > /iptables/rules.v4.bak
	ip6tables-save > /iptables/rules.v6.bak
	#Block Bogons
	printf "\033[1;31mEnter primary internet interface: \033[0m\n"
	read interface
	#Blocks bogons going into the computer
	iptables -A INPUT -s 127.0.0.0/8 -i $interface -j DROP
	iptables -A INPUT -s 0.0.0.0/8 -j DROP
	iptables -A INPUT -s 100.64.0.0/10 -j DROP
	iptables -A INPUT -s 169.254.0.0/16 -j DROP
	iptables -A INPUT -s 192.0.0.0/24 -j DROP
	iptables -A INPUT -s 192.0.2.0/24 -j DROP
	iptables -A INPUT -s 198.18.0.0/15 -j DROP
	iptables -A INPUT -s 198.51.100.0/24 -j DROP
	iptables -A INPUT -s 203.0.113.0/24 -j DROP
	iptables -A INPUT -s 224.0.0.0/3 -j DROP
	#Blocks bogons from leaving the computer
	iptables -A OUTPUT -d 127.0.0.0/8 -o $interface -j DROP
	iptables -A OUTPUT -d 0.0.0.0/8 -j DROP
	iptables -A OUTPUT -d 100.64.0.0/10 -j DROP
	iptables -A OUTPUT -d 169.254.0.0/16 -j DROP
	iptables -A OUTPUT -d 192.0.0.0/24 -j DROP
	iptables -A OUTPUT -d 192.0.2.0/24 -j DROP
	iptables -A OUTPUT -d 198.18.0.0/15 -j DROP
	iptables -A OUTPUT -d 198.51.100.0/24 -j DROP
	iptables -A OUTPUT -d 203.0.113.0/24 -j DROP
	iptables -A OUTPUT -d 224.0.0.0/3 -j DROP
	#Blocks outbound from source bogons - A bit overkill
	iptables -A OUTPUT -s 127.0.0.0/8 -o $interface -j DROP
	iptables -A OUTPUT -s 0.0.0.0/8 -j DROP
	iptables -A OUTPUT -s 100.64.0.0/10 -j DROP
	iptables -A OUTPUT -s 169.254.0.0/16 -j DROP
	iptables -A OUTPUT -s 192.0.0.0/24 -j DROP
	iptables -A OUTPUT -s 192.0.2.0/24 -j DROP
	iptables -A OUTPUT -s 198.18.0.0/15 -j DROP
	iptables -A OUTPUT -s 198.51.100.0/24 -j DROP
	iptables -A OUTPUT -s 203.0.113.0/24 -j DROP
	iptables -A OUTPUT -s 224.0.0.0/3 -j DROP
	#Block receiving bogons intended for bogons - Super overkill
	iptables -A INPUT -d 127.0.0.0/8 -i $interface -j DROP
	iptables -A INPUT -d 0.0.0.0/8 -j DROP
	iptables -A INPUT -d 100.64.0.0/10 -j DROP
	iptables -A INPUT -d 169.254.0.0/16 -j DROP
	iptables -A INPUT -d 192.0.0.0/24 -j DROP
	iptables -A INPUT -d 192.0.2.0/24 -j DROP
	iptables -A INPUT -d 198.18.0.0/15 -j DROP
	iptables -A INPUT -d 198.51.100.0/24 -j DROP
	iptables -A INPUT -d 203.0.113.0/24 -j DROP
	iptables -A INPUT -d 224.0.0.0/3 -j DROP
	iptables -A INPUT -i lo -j ACCEPT
	#Least Strict Rules
	#iptables -A INPUT -m conntrack --ctstate RELATED,ESTABLISHED -j ACCEPT
	#Strict Rules -- Only allow well known ports (1-1022)
	#iptables -A INPUT -p tcp --match multiport --sports 1:1022 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	#iptables -A INPUT -p udp --match multiport --sports 1:1022 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	#iptables -A OUTPUT -p tcp --match multiport --dports 1:1022 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	#iptables -A OUTPUT -p udp --match multiport --dports 1:1022 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	#iptables -A OUTPUT -o lo -j ACCEPT
	#iptables -P OUTPUT DROP
	#Very Strict Rules - Only allow HTTP/HTTPS, NTP and DNS
	iptables -A INPUT -p tcp --sport 80 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	iptables -A INPUT -p tcp --sport 443 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	iptables -A INPUT -p tcp --sport 53 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	iptables -A INPUT -p udp --sport 53 -m conntrack --ctstate ESTABLISHED -j ACCEPT
	iptables -A OUTPUT -p tcp --dport 80 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	iptables -A OUTPUT -p tcp --dport 443 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	iptables -A OUTPUT -p tcp --dport 53 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	iptables -A OUTPUT -p udp --dport 53 -m conntrack --ctstate NEW,ESTABLISHED -j ACCEPT
	iptables -A OUTPUT -o lo -j ACCEPT
	iptables -P OUTPUT DROP
	mkdir /etc/iptables/
	touch /etc/iptables/rules.v4
	touch /etc/iptables/rules.v6
	iptables-save > /etc/iptables/rules.v4
	ip6tables-save > /etc/iptables/rules.v6
    #block typical bad stuff
$path/iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP #null packets
$path/iptables -A INPUT -p tcp ! --syn -m state --state NEW -j DROP #syn-flood packets
$path/iptables -A INPUT -p tcp --tcp-flags ALL ALL -j DROP #XMAS packets (recon)
$path/iptables -A INPUT -m state --state INVALID -j DROP #invalid packets

# Accept in/out from loopback
$path/iptables -A INPUT -i lo -j ACCEPT
$path/iptables -A OUTPUT -o lo -j ACCEPT

# Allow icmp request/reply from and to host
$path/iptables -A INPUT -p icmp --icmp-type 0 -j ACCEPT
$path/iptables -A OUTPUT -p icmp --icmp-type 0 -j ACCEPT
$path/iptables -A INPUT -p icmp --icmp-type 8 -j ACCEPT
$path/iptables -A OUTPUT -p icmp --icmp-type 8 -j ACCEPT

# Allow established TCP connections to re-enter
$path/iptables -A INPUT -m state --state ESTABLISHED -j ACCEPT

# Allow HTTP and HTTPS in and out for server and client
$path/iptables -A OUTPUT -p tcp -m multiport --sports 80,443 -j ACCEPT #server outbound
$path/iptables -A INPUT -p tcp -m multiport --dports 80,443 -j ACCEPT #server inbound
$path/iptables -A OUTPUT -p tcp -m multiport --dports 80,443 -j ACCEPT #client outbound
#$path/iptables -A INPUT -p tcp -m multiport --sports 80,443 -j ACCEPT #client inbound - shouldn't need as long as you allow established tcp connections back in

# Allow MySQL queries as a client
#$path/iptables -A INPUT -p tcp -m tcp --sport 3306 -j ACCEPT
#$path/iptables -A OUTPUT -p tcp -m tcp --dport 3306 -j ACCEPT

# Allow MySQL queries as a server
#$path/iptables -A INPUT -p tcp -m tcp --dport 3306 -j ACCEPT
#$path/iptables -A OUPUT -p tcp -m tcp --sport 3306 -j ACCEPT

# Allow DNS queries as a client
$path/iptables -A INPUT -p udp --sport 53 -j ACCEPT
$path/iptables -A INPUT -p tcp --sport 53 -j ACCEPT #needed for large zone transfers
$path/iptables -A OUTPUT -p udp --dport 53 -j ACCEPT
$path/iptables -A OUTPUT -p tcp --dport 53 -j ACCEPT #needed for large zone transfers

#allow DNS queries as a server
$path/iptables -A INPUT -p udp --dport 53 -j ACCEPT
$path/iptables -A INPUT -p tcp --dport 53 -j ACCEPT #needed for large zone transfers
$path/iptables -A OUTPUT -p udp --sport 53 -j ACCEPT
$path/iptables -A OUTPUT -p tcp -m tcp --sport 53 -j ACCEPT #needed for large zone transfers

# Allow DHCP client traffic
$path/iptables -A INPUT -p udp --dport 68 -j ACCEPT
$path/iptables -A OUTPUT -p udp --sport 68 -j ACCEPT

# Allow DHCP server traffic
$path/iptables -A INPUT -p udp --dport 67 -j ACCEPT
$path/iptables -A OUTPUT -p udp --sport 67 -j ACCEPT

#allow ssh in and out for a server
$path/iptables -A INPUT -p tcp -m tcp --dport 22 -j ACCEPT
$path/iptables -A OUTPUT -p tcp -m tcp --sport 22 -j ACCEPT

#allow ssh out for a client
$path/iptables -A INPUT -p tcp -m tcp --sport 22 -j ACCEPT
$path/iptables -A OUTPUT -p tcp -m tcp --dport 22 -j ACCEPT

#allow FTP server traffic; only for ftp servers!
$path/iptables -A INPUT -p tcp -m tcp --dport 21 -m state --state NEW,ESTABLISHED -j ACCEPT #initial connection
$path/iptables -A OUTPUT -p tcp -m tcp --sport 21 -m state --state NEW,ESTABLISHED -j ACCEPT #initial connection
$path/iptables -A INPUT -p tcp -m tcp --dport 20 -m state --state NEW,ESTABLISHED -j ACCEPT #active mode
$path/iptables -A OUTPUT -p tcp -m tcp --sport 20 -m state --state NEW,RELATED,ESTABLISHED -j ACCEPT #active mode
$path/iptables -A INPUT -p tcp -m tcp --sport 1024:65535 --dport 1024:65535 -m state --state NEW,RELATED,ESTABLISHED -j ACCEPT #passive
$path/iptables -A OUTPUT -p tcp -m tcp --sport 1024:65535 --dport 1024:65535 -m state --state NEW,ESTABLISHED -j ACCEPT #passive

#smtp in/out rules; only for smtp servers!
$path/iptables -A INPUT -p tcp -m tcp --dport 25 -j ACCEPT
$path/iptables -A OUTPUT -p tcp -m tcp --sport 25 -j ACCEPT

#allow opsview agent in/out to specific IP address (if using monitoring service)
#monServer=127.0.0.1 #<-replace with IP of monitoring server
$path/iptables -A INPUT -p tcp -s $monServer --dport 5666 -j ACCEPT
$path/iptables -A OUTPUT -p tcp -d $monServer --sport 5666 -j ACCEPT

#TODO, rules for POP and/or IMAP

#VOIP - needed for asterisk/voip server!
# SIP on UDP port 5060. Other SIP servers may need TCP port 5060 as well
#$path/iptables -A INPUT -p udp -m udp --dport 5060 -j ACCEPT
#$path/iptables -A INPUT -p udp -m udp --dport 4569 -j ACCEPT # IAX2- the IAX protocol
#$path/iptables -A INPUT -p udp -m udp --dport 5036 -j ACCEPT # IAX - most have switched to IAX v2, or ought to
 # RTP - the media stream
#$path/iptables -A INPUT -p udp -m udp --dport 10000:20000 -j ACCEPT # (related to the port range in /etc/asterisk/rtp.conf)
#$path/iptables -A INPUT -p udp -m udp --dport 2727 -j ACCEPT # MGCP - if you use media gateway control protocol in your configuration

# Log firewall hits
$path/iptables -A INPUT -m limit --limit 15/min -j LOG --log-level 4 --log-prefix "INv4 "
$path/iptables -A OUTPUT -m limit --limit 15/min -j LOG --log-level 4 --log-prefix "OUTv4 "
$path/ip6tables -A INPUT -m limit --limit 3/min -j LOG --log-level 4 --log-prefix "INv6 "
$path/ip6tables -A OUTPUT -m limit --limit 3/min -j LOG --log-level 4 --log-prefix "OUTv6 "

# Drop all other stuff
$path/iptables -A INPUT -j DROP
$path/iptables -A OUTPUT -j DROP
$path/ip6tables -A INPUT -j DROP
$path/ip6tables -A OUTPUT -j DROP

# INSTATE THESE RULES ON HOST TO PROTECT
# This will reroute non-scoring engine traffic to a honeypot and allow the traffic to be routed back from
# that honeypot to the original sender.
# NOTE: vsftpd needs pasv_promiscuous=yes for "fake" ftp

# echo "1" > /proc/sys/net/ipv4/ip_forward
# $path/iptables -D INPUT -j DROP
# $path/iptables -D OUTPUT -j DROP
# $path/iptables -t nat -A PREROUTING -p tcp -j DNAT --to-destination $shitboxIP #Make all traffic go to the playground
# $path/iptables -t nat -A POSTROUTING -d $shitboxIP -p tcp -j MASQUERADE
# $path/iptables -t nat -I PREROUTING -p tcp -s $scoremaster -j ACCEPT #Accept all traffic from the scorebox

# $path/iptables -t nat -A PREROUTING -p udp -j DNAT --to-destination $shitboxIP #Make all traffic go to the playground
# $path/iptables -t nat -A POSTROUTING -d $shitboxIP -p udp -j MASQUERADE
# $path/iptables -t nat -I PREROUTING -p udp -s $scoremaster -j ACCEPT #Accept all traffic from the scorebox

#$path/iptables -I INPUT -d $shitboxIP -j ACCEPT
#$path/iptables -I FORWARD -d $shitboxIP -j ACCEPT
#$path/iptables -I OUTPUT -d $shitboxIP -j ACCEPT
#$path/iptables -I INPUT -s $shitboxIP -j ACCEPT
#$path/iptables -I FORWARD -s $shitboxIP -j ACCEPT
#$path/iptables -I OUTPUT -s $shitboxIP -j ACCEPT
iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 23 -j DROP         #Block Telnet
    iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 2049 -j DROP       #Block NFS
    iptables -A INPUT -p udp -s 0/0 -d 0/0 --dport 2049 -j DROP       #Block NFS
    iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 6000:6009 -j DROP  #Block X-Windows
    iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 7100 -j DROP       #Block X-Windows font server
    iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 515 -j DROP        #Block printer port
    iptables -A INPUT -p udp -s 0/0 -d 0/0 --dport 515 -j DROP        #Block printer port
    iptables -A INPUT -p tcp -s 0/0 -d 0/0 --dport 111 -j DROP        #Block Sun rpc/NFS
    iptables -A INPUT -p udp -s 0/0 -d 0/0 --dport 111 -j DROP        #Block Sun rpc/NFS
    iptables -A INPUT -p all -s localhost  -i eth0 -j DROP            #Deny outside packets from internet which claim to be from your loopback interface.
    # Βlock null packets (DoS)
iptables -A INPUT -p tcp --tcp-flags ALL NONE -j DROP

# Block syn-flood attacks (DoS)
iptables -A INPUT -p tcp ! --syn -m state --state NEW -j DROP

# Block XMAS packets (DoS)
iptables -A INPUT -p tcp --tcp-flags ALL ALL -j DROP

# Allow internal traffic on the loopback device
iptables -A INPUT -i lo -j ACCEPT

# Allow ssh access
iptables -A INPUT -p tcp -m tcp --dport 62111 -j ACCEPT

# Allow established connections
iptables -I INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
  
# Allow outgoing connections
iptables -P OUTPUT ACCEPT
  
# Set default deny firewall policy
iptables -P INPUT DROP

# Save rules
iptables-save > /etc/iptables/rules.v4