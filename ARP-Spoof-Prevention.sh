#!/bin/sh
echo "Way to prevent ARP spoofing is to create a static ARP table on a device, which will be loaded into RAM everytime the operating system is loaded and accessed everytime a device needs to send a frame to a certain device on the LAN, without sending out a ARP request.

Every packet for ip address witch is not in local lan will be send trought default gateway. If you do not use local dns, mail server, ... we do not need make to many permanent entry in arp table.

You can add static arp with command

sudo arp -i eth0 -s 192.168.1.1 00:e0:1e:b4:12:42
but this will disapear after reboot. For permanent we need to create a file with the IP addresses to MAC addresses mappings:

 sudo nano /etc/network/if-up.d/st
We add the MAC address and IP address of our gateway. Replace “eth0” with your current interface name, the IP field with IP and MAC of your gateway

 #!/bin/sh
 arp -i eth0 -s 192.168.1.1 00:e0:1e:b4:12:42
Save and exit

Change permission

 sudo chmod 755 /etc/network/if-up.d/static-arp 
After the restart, the mappings will be shown as follows:

 host1@mydomain:~$ arp -va

 host1.mydomain (192.168.1.1) at XX:XX:XX:XX:XX:XX [ether] PERM on eth0
 Entries: 1 Skipped: 0  Found: 1
Note the PERM entry in the ARP table.


credit : https://askubuntu.com/questions/663707/how-to-prevent-arp-spoofing"