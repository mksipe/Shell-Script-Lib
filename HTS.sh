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
which acccheck | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ace-voip | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which amap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apt2 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arp-scan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which automater | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bing-ip2hosts | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which braa | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which casefile | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cdpsarf | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cookie cadger | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which copy-router-config | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dmitry | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsenum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsrecon | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnstracer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnswalk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dotdotpwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which enum4linux | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which enumiax | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which eyewitness | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which faraday | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fierce | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which firewalk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fragroute | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fragrouter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ghost phisher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which golismero | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which goofile | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hping3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ident-user-enum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inspy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which intrace | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ismtp | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which lbd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which masscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metagoofil | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which miranda | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nbtscan-unixwiz | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nikto | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ntop | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which osrframework | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which p0f | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which parsero | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which recon-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which set | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smbmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smtp-user-enum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which snmp-check | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sparta | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslcaudit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslsplit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslstrip | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aalyze | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sublist3r | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which theharvester | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tlssled | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which twofi | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which unicornscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which urlcrazy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wireshark | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WOL-E | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Xplico | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Vulnerability Analysis----------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BBQSQL | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bed | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-global-exploiter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-ocs | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which copy-router-config | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbpwaudit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which doona | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dotdotpwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexorbase | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inguma | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jSQL injection | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which lynis | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ohrwurm | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which openvas | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Oscanner | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powerfuzzer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sfuzz | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sidguesser | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which siparmyknife | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlninja | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlsus | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tnscmd10g | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which unix-privesc-check | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Exploitation Tools--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which armitage | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which backdoor factory | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which beef | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-global-exploiter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-ocs | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which commix | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crackle | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which exploitdb | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jboss-autopwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which linux exploit suggester | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metasploit framework | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which msfrpc | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which routersploit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which set | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which shellnoob | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Wireless Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airbase-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aircrack-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airdecap-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airdecloak-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aireplay-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airmon-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airodump-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airodump-ng-oui-update | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airolib-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airserv-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airtun-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which asleap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which besside-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluelog | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluemaho | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluepot | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which blueranger | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluesnarfer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bully | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cowpatty | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crackle | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which eapmd5pass | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which easside-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fern wifi cracker | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which freeradius-wpe | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ghost phisher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which giskismet | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gqrx | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gr-scan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hostapd-wpe | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ivstools | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which kalibrate-rtl | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which killerBee | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which kismet | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which makeivs-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mdk3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfcuk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfoc | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfterm | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which multimon-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which packetforge-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pixiewps | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pyrit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which reaver | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which redfang | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which RTLSDR Scanner | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which spooftooph | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tkiptun-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wesside-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifi honey | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifiphisher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wifitap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wifite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wpaclean | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Forensics Tools-----------------|"  | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which binwalk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bulk-extractor | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which capstone | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which chntpw | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cuckoo | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dc3dd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ddrescue | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dff | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which diStorm3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dumpzilla | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which extundelete | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which foremost | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which galleta | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which guymager | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iphone backup analyzer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which p0f | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdf-parser | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdfid | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdgmail | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which peepdf | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which regripper | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which volatility | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xplico | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Web Applications----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apache-users | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arachni | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BBQSQL | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which blindelephant | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cutycapt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which davTest | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which deblaze | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dirb | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dirbuster | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fimap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which funkload | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gobuster | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which grabber | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hurl | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jboss-autopwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which joomscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jSQL Injection | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nikto | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which padbuster | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which paros | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which parsero | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which plecost | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powerfuzzer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which proxystrike | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which recon-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which skipfish | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlninja | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlsus | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ua-tester | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which uniscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which vega | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which w3af | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Webscarab | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Webshag | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webslayer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which websploit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wfuzz | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which whatweb | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wpscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xsser | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Stress Testing------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dhcpig | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which funkload | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iaxflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inundator | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inviteflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ipv6-toolkit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mdk3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which reaver | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which slowhttptest | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which t50 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which termineter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-SSL-DOS | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Sniffing & Spoofing-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnschef | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fiked | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hamster-sidejack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexinject | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iaxflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inviteflood | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ismtp | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
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
which siparmyKnife | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sipp | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sipvicious | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sniffjoke | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslsplit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslstrip | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which voiphopper | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webscarab | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifi honey | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wireshark | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xspy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Password Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which acccheck | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which brutespray | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cewl | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which chntpw | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cmospwd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which creddump | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crowbar | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crunch | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbpwaudit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which findmyhash | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gpp-decrypt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hash-identifier | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hashcat | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexorbase | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-Hydra | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which john the ripper | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which johnny | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which keimpx | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maskprocessor | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which multiforcer | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ncrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which oclgausscrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ophcrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which patator | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which phrasendrescher | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which polenum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rainbowcrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rcracki-mt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rsmangler | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which seclists | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqldict | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which statsprocessor | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-pptp-bruter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which truecrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webscarab | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wordlists | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Maintaining Access--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cryptcat | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cymothoa | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dns2tcp | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which http-tunnel | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which httptunnel | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which intersect | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nishang | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which polenum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powersploit | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pwnat | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ridenum | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sbd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which shellter | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which U3-Pwn | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webshells | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which weevely | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which winexe | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Hardware Hacking----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which android-sdk | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apktool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arduino | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dex2jar | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sakis3G | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smali | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Reverse Engineering-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apktool | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dex2jar | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which diStorm3 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which edb-debugger | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jad | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which javasnoop | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jd-gui | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ollyD=dbg | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smali | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which valgrind | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yara | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Reporting Tools-----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which casefile | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cherrytree | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cutycapt | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dos2unix | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dradis | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which magictree | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metagoofil | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nipper-ng | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pipal | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rdpy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Other Exploit Devices-----------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which netcat | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ssh | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which samba | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which vsftpd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis postgresql | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mysql | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis wordpress | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apache | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xhydra | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ettercap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zenmap | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tcpdump | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BackTrack | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sysinternals | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which scapy | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nemisis | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which www | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Status--------------------------|"
echo "[SUCCESS] HTS.sh was ran on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log