#!/bin/sh
date=$(date -u)
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root. This instance will be logged."
    echo "[FAIL] $USER attempted to run the search on $date." | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
    exit
fi
echo "HTS.sh started on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
touch /bin/lib/sh/MK3S/data/Exploit-Search.txt
chmod 511 /bin/lib/sh/MK3S/data/Exploit-Search.txt
cat /dev/null > /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Information Gathering-----------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which acccheck | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ace-voip | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Amap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which APT2 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arp-scan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Automater | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bing-ip2hosts | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which braa | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which CaseFile | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which CDPSnarf | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Cookie Cadger | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which copy-router-config | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which DMitry | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsenum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which DNSRecon | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnstracer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnswalk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which DotDotPwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which enum4linux | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which enumIAX | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which EyeWitness | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Faraday | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Fierce | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Firewalk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fragroute | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fragrouter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Ghost Phisher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which GoLismero | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which goofile | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hping3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ident-user-enum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which InSpy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which InTrace | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iSMTP | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which lbd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Maltego Teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which masscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Metagoofil | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Miranda | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nbtscan-unixwiz | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Nikto | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Nmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ntop | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which OSRFramework | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which p0f | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Parsero | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Recon-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SET | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SMBMap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smtp-user-enum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which snmp-check | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SPARTA | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslcaudit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SSLsplit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslstrip | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SSLyze | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Sublist3r | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which theHarvester | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which TLSSLed | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which twofi | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Unicornscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which URLCrazy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wireshark | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WOL-E | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Xplico | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Vulnerability Analysis----------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which BBQSQL | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BED | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-global-exploiter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-ocs | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which copy-router-config | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which DBPwAudit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Doona | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which DotDotPwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which HexorBase | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Inguma | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jSQL Injection | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Lynis | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Nmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ohrwurm | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which openvas | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Oscanner | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Powerfuzzer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sfuzz | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SidGuesser | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SIPArmyKnife | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Sqlninja | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlsus | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tnscmd10g | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which unix-privesc-check | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Yersinia | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Exploitation Tools--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which Armitage | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Backdoor Factory | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BeEF | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-global-exploiter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-ocs | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Commix | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crackle | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which exploitdb | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jboss-autopwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Linux Exploit Suggester | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Maltego Teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Metasploit Framework | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which MSFPC | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which RouterSploit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SET | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ShellNoob | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Yersinia | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Wireless Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which Airbase-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Aircrack-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Airdecap-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Airdecloak-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Aireplay-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Airmon-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Airodump-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airodump-ng-oui-update | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Airolib-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Airserv-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Airtun-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Asleap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Besside-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Bluelog | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BlueMaho | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Bluepot | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BlueRanger | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Bluesnarfer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Bully | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which coWPAtty | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crackle | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which eapmd5pass | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Easside-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Fern Wifi Cracker | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which FreeRADIUS-WPE | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Ghost Phisher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which GISKismet | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Gqrx | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gr-scan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hostapd-wpe | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ivstools | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which kalibrate-rtl | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which KillerBee | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Kismet | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which makeivs-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mdk3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfcuk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfoc | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfterm | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Multimon-NG | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Packetforge-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which PixieWPS | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Pyrit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Reaver | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which redfang | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which RTLSDR Scanner | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Spooftooph | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Tkiptun-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wesside-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wifi Honey | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifiphisher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wifitap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wifite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wpaclean | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Forensics Tools-----------------|"  | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which Binwalk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bulk-extractor | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Capstone | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which chntpw | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Cuckoo | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dc3dd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ddrescue | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which DFF | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which diStorm3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Dumpzilla | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which extundelete | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Foremost | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Galleta | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Guymager | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iPhone Backup Analyzer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which p0f | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdf-parser | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdfid | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdgmail | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which peepdf | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which RegRipper | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Volatility | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Xplico | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Web Applications----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which apache-users | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Arachni | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BBQSQL | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BlindElephant | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Burp Suite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which CutyCapt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which DAVTest | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which deblaze | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which DIRB | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which DirBuster | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fimap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which FunkLoad | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Gobuster | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Grabber | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hURL | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jboss-autopwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which joomscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jSQL Injection | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Maltego Teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Nikto | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which PadBuster | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Paros | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Parsero | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which plecost | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Powerfuzzer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ProxyStrike | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Recon-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Skipfish | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Sqlninja | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlsus | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ua-tester | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Uniscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Vega | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which w3af | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WebScarab | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Webshag | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WebSlayer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WebSploit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wfuzz | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WhatWeb | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WPScan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which XSSer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Stress Testing------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which DHCPig | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which FunkLoad | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iaxflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Inundator | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inviteflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ipv6-toolkit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mdk3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Reaver | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SlowHTTPTest | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which t50 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Termineter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-SSL-DOS | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Sniffing & Spoofing-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which Burp Suite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which DNSChef | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fiked | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hamster-sidejack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which HexInject | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iaxflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inviteflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iSMTP | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which isr-evilgrade | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mitmproxy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ohrwurm | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which protos-sip | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rebind | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which responder | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpbreak | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpinsertsound | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpmixsound | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sctpscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SIPArmyKnife | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SIPp | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SIPVicious | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SniffJoke | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SSLsplit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslstrip | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which VoIPHopper | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WebScarab | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wifi Honey | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wireshark | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xspy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Yersinia | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Password Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which acccheck | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BruteSpray | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Burp Suite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which CeWL | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which chntpw | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which CmosPwd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which creddump | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crowbar | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crunch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which DBPwAudit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which findmyhash | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gpp-decrypt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hash-identifier | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Hashcat | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which HexorBase | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-Hydra | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which John the Ripper | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Johnny | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which keimpx | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Maltego Teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Maskprocessor | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which multiforcer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Ncrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which oclgausscrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ophcrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which PACK | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which patator | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which phrasendrescher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which polenum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which RainbowCrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rcracki-mt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which RSMangler | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SecLists | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which SQLdict | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Statsprocessor | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-pptp-bruter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which TrueCrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WebScarab | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wordlists | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Maintaining Access--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which CryptCat | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Cymothoa | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dns2tcp | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which http-tunnel | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which HTTPTunnel | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Intersect | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Nishang | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which polenum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which PowerSploit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pwnat | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which RidEnum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sbd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which shellter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which U3-Pwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Webshells | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Weevely | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Winexe | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Hardware Hacking----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which android-sdk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apktool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Arduino | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dex2jar | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Sakis3G | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smali | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Reverse Engineering-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which apktool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dex2jar | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which diStorm3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which edb-debugger | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jad | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which javasnoop | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which JD-GUI | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which OllyDbg | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smali | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Valgrind | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which YARA | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m----------Reporting Tools-----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[91m"
which CaseFile | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cherrytree | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which CutyCapt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dos2unix | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Dradis | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which MagicTree | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Metagoofil | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Nipper-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pipal | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which RDPY | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "\e[0m
echo "[SUCCESS] HTS.sh was ran on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log