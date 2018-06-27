#!/bin/sh
date=$(date -u)
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root. This instance will be logged."
    echo "[FAIL] $USER attempted to run the search on $date." | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
    exit
fi
RED=$(echo "\e[91m")
WHITE=$(echo -e "\e[97m")
echo "HTS.sh started on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
touch /bin/lib/sh/MK3S/data/Exploit-Search.txt
chmod 511 /bin/lib/sh/MK3S/data/Exploit-Search.txt
cat /dev/null > /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Information Gathering-----------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis acccheck | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ace-voip | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Amap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis APT2 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis arp-scan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Automater | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis bing-ip2hosts | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis braa | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis CaseFile | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis CDPSnarf | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis cisco-torch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Cookie Cadger | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis copy-router-config | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis DMitry | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis dnmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis dnsenum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis dnsmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis DNSRecon | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis dnstracer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis dnswalk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis DotDotPwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis enum4linux | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis enumIAX | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis EyeWitness | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Faraday | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Fierce | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Firewalk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis fragroute | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis fragrouter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Ghost Phisher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis GoLismero | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis goofile | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis hping3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ident-user-enum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis InSpy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis InTrace | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis iSMTP | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis lbd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Maltego Teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis masscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Metagoofil | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Miranda | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis nbtscan-unixwiz | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Nikto | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Nmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ntop | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis OSRFramework | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis p0f | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Parsero | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Recon-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SET | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SMBMap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis smtp-user-enum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis snmp-check | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SPARTA | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis sslcaudit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SSLsplit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis sslstrip | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SSLyze | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Sublist3r | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis theHarvester | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis TLSSLed | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis twofi | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Unicornscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis URLCrazy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Wireshark | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis WOL-E | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Xplico | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Vulnerability Analysis----------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis BBQSQL | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis BED | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis cisco-auditing-tool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis cisco-global-exploiter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis cisco-ocs | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis cisco-torch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis copy-router-config | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis DBPwAudit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Doona | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis DotDotPwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis HexorBase | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Inguma | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis jSQL Injection | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Lynis | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Nmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ohrwurm | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis openvas | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Oscanner | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Powerfuzzer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis sfuzz | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SidGuesser | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SIPArmyKnife | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis sqlmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Sqlninja | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis sqlsus | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis tnscmd10g | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis unix-privesc-check | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Yersinia | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Exploitation Tools--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis Armitage | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Backdoor Factory | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis BeEF | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis cisco-auditing-tool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis cisco-global-exploiter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis cisco-ocs | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis cisco-torch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Commix | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis crackle | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis exploitdb | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis jboss-autopwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Linux Exploit Suggester | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Maltego Teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Metasploit Framework | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis MSFPC | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis RouterSploit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SET | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ShellNoob | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis sqlmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Yersinia | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Wireless Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis Airbase-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Aircrack-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Airdecap-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Airdecloak-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Aireplay-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Airmon-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Airodump-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis airodump-ng-oui-update | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Airolib-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Airserv-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Airtun-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Asleap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Besside-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Bluelog | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis BlueMaho | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Bluepot | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis BlueRanger | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Bluesnarfer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Bully | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis coWPAtty | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis crackle | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis eapmd5pass | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Easside-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Fern Wifi Cracker | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis FreeRADIUS-WPE | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Ghost Phisher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis GISKismet | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Gqrx | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis gr-scan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis hostapd-wpe | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ivstools | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis kalibrate-rtl | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis KillerBee | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Kismet | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis makeivs-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis mdk3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis mfcuk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis mfoc | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis mfterm | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Multimon-NG | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Packetforge-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis PixieWPS | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Pyrit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Reaver | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis redfang | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis RTLSDR Scanner | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Spooftooph | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Tkiptun-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Wesside-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Wifi Honey | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis wifiphisher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Wifitap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Wifite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis wpaclean | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Forensics Tools-----------------|"  | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$GREY
whereis Binwalk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis bulk-extractor | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Capstone | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis chntpw | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Cuckoo | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis dc3dd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ddrescue | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis DFF | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis diStorm3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Dumpzilla | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis extundelete | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Foremost | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Galleta | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Guymager | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis iPhone Backup Analyzer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis p0f | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis pdf-parser | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis pdfid | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis pdgmail | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis peepdf | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis RegRipper | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Volatility | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Xplico | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Web Applications----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis apache-users | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Arachni | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis BBQSQL | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis BlindElephant | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Burp Suite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis CutyCapt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis DAVTest | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis deblaze | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis DIRB | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis DirBuster | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis fimap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis FunkLoad | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Gobuster | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Grabber | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis hURL | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis jboss-autopwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis joomscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis jSQL Injection | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Maltego Teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Nikto | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis PadBuster | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Paros | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Parsero | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis plecost | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Powerfuzzer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ProxyStrike | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Recon-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Skipfish | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis sqlmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Sqlninja | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis sqlsus | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ua-tester | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Uniscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Vega | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis w3af | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis WebScarab | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Webshag | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis WebSlayer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis WebSploit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Wfuzz | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis WhatWeb | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis WPScan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis XSSer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis zaproxy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Stress Testing------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis DHCPig | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis FunkLoad | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis iaxflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Inundator | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis inviteflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ipv6-toolkit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis mdk3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Reaver | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis rtpflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SlowHTTPTest | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis t50 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Termineter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis THC-SSL-DOS | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Sniffing & Spoofing-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis Burp Suite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis DNSChef | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis fiked | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis hamster-sidejack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis HexInject | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis iaxflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis inviteflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis iSMTP | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis isr-evilgrade | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis mitmproxy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ohrwurm | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis protos-sip | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis rebind | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis responder | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis rtpbreak | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis rtpinsertsound | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis rtpmixsound | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis sctpscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SIPArmyKnife | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SIPp | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SIPVicious | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SniffJoke | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SSLsplit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis sslstrip | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis VoIPHopper | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis WebScarab | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Wifi Honey | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Wireshark | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis xspy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Yersinia | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis zaproxy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Password Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis acccheck | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis BruteSpray | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Burp Suite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis CeWL | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis chntpw | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis cisco-auditing-tool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis CmosPwd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis creddump | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis crowbar | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis crunch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis DBPwAudit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis findmyhash | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis gpp-decrypt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis hash-identifier | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Hashcat | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis HexorBase | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis THC-Hydra | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis John the Ripper | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Johnny | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis keimpx | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Maltego Teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Maskprocessor | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis multiforcer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Ncrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis oclgausscrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis ophcrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis PACK | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis patator | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis phrasendrescher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis polenum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis RainbowCrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis rcracki-mt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis RSMangler | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SecLists | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis SQLdict | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Statsprocessor | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis THC-pptp-bruter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis TrueCrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis WebScarab | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis wordlists | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis zaproxy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Maintaining Access--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis CryptCat | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Cymothoa | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis dbd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis dns2tcp | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis http-tunnel | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis HTTPTunnel | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Intersect | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Nishang | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis polenum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis PowerSploit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis pwnat | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis RidEnum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis sbd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis shellter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis U3-Pwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Webshells | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Weevely | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Winexe | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Hardware Hacking----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis android-sdk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis apktool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Arduino | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis dex2jar | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Sakis3G | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis smali | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Reverse Engineering-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis apktool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis dex2jar | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis diStorm3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis edb-debugger | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis jad | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis javasnoop | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis JD-GUI | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis OllyDbg | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis smali | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Valgrind | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis YARA | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Reporting Tools-----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$RED
whereis CaseFile | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis cherrytree | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis CutyCapt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis dos2unix | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Dradis | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis MagicTree | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Metagoofil | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis Nipper-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis pipal | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis RDPY | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
$WHITE
echo "[SUCCESS] HTS.sh was ran on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log