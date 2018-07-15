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
which acccheck && man acccheck | cat | head -n 4 | grep acccheck | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ace-voip && man ace-voip | cat | head -n 4 | grep ace-voip | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which amap && man amap | cat | head -n 4 | grep amap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apt2 && man apt2 | cat | head -n 4 | grep apt2 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arp-scan && man arp-scan | cat | head -n 4 | grep arp-scan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which automater && man automater | cat | head -n 4 | grep automater | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bing-ip2hosts && man bing-ip2hosts | cat | head -n 4 | grep bing-ip2hosts | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which braa && man braa | cat | head -n 4 | grep braa | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which casefile && man casefile | cat | head -n 4 | grep casefile | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cdpsarf && man cdpsarf | cat | head -n 4 | grep cdpsarf | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch && man cisco-torch | cat | head -n 4 | grep cisco-torch | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cookie cadger && man cookie cadger | cat | head -n 4 | grep cookie cadger | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which copy-router-config && man copy-router-config | cat | head -n 4 | grep copy-router-config | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dmitry && man dmitry | cat | head -n 4 | grep dmitry | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnmap && man dnmap | cat | head -n 4 | grep dnmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsenum && man dnsenum | cat | head -n 4 | grep dnsenum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsmap && man dnsmap | cat | head -n 4 | grep dnsmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsrecon && man dnsrecon | cat | head -n 4 | grep dnsrecon | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnstracer && man dnstracer | cat| head -n 4 | grep dnstracer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnswalk && man dnswalk | cat | head -n 4 | grep dnswalk | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dotdotpwn && man dotdotpwn | cat | head -n 4 | grep dotdotpwn | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which enum4linux && man enum4linux | cat | head -n 4 | grep enum4linux | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which enumiax && man enumiax | cat | head -n 4 | grep enumiax | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which eyewitness && man eyewitness | cat | head -n 4 | grep eyewitness | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which faraday && man faraday | cat | head -n 4 | grep faraday | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fierce && man fierce | cat | head -n 4 | grep fierce | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which firewalk && man firewalk | cat | head -n 4 | grep firewalk | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fragroute && man fragroute | cat | head -n 4 | grep fragroute | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fragrouter && man fragrouter | cat | head -n 4 | grep fragrouter | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ghost phisher && man ghost phisher | cat | head -n 4 | grep ghost phisher | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which golismero && man golismero | cat | head -n 4 | grep golismero | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which goofile && man goofile | cat | head -n 4 | grep goofile | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hping3 && man hping3 | cat | head -n 4 | grep hping3 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ident-user-enum && man ident-user-enum | cat | head -n 4 | grep ident-user-enum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inspy && man inspy | cat | head -n 4 | grep inspy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which intrace && man intrace | cat | head -n 4 | grep intrace | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ismtp && man ismtp | cat | head -4 | grep ismtp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which lbd && man lbd | cat | head -n 4 | grep lbd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth && man maltego teeth | cat | head -n 4 | grep maltego teeth | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which masscan && man masscan | cat | head -n 4 | grep masscan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metagoofil && man metagoofil | cat | head -n 4 | grep metagoofil | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which miranda && man miranda | cat | head -n 4 | grep miranda | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nbtscan-unixwiz && man nbtscan-unixwiz | cat | head -n 4 | grep nbtscan-unixwiz | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nikto && man nikto | cat | head -n 4 | grep nikto | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nmap && man nmap | cat | head -n 4 | grep nmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ntop && man ntop | cat | head -n 4 | grep ntop | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which osrframework && man osrframework | cat | head -n 4 | grep osrframework | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which p0f && man p0f | cat | head -n 4 | grep p0f | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which parsero && man parsero | cat | head -n 4 | grep parsero | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which recon-ng && man recon -ng | cat | head -n 4 | grep recon-ng | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which set && man setoolkit | cat | head -n 4 | grep set | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smbmap && man smbmap | cat | head -n 4 | grep smbmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smtp-user-enum && man smtp-user-enum | cat | head -n 4 | grep smtp-user-enum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which snmp-check && man snmp-check | cat | head -n 4 | grep snmp-check | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sparta && man sparta | cat | head -n 4 | grep sparta | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslcaudit && man sslcaudit | cat | head -n 4 | grep sslcaudit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslsplit && man sslsplit | cat | head -n 4 | grep sslsplit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslstrip && man sslstrip | cat | head -n 4 | grep sslstrip | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aalyze && man aalyze | cat | head -n 4 | grep aalyze | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sublist3r && man sublist3r | cat | head -n 4 | grep sublist3r | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which theharvester && man theharvester | cat | head -n 4 | grep theharvester | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tlssled && man tlssled | cat | head -n 4  | grep tlssled | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which twofi && man twofi | cat | head -n 4 | grep twofi | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which unicornscan && man unicornscan | cat | head -n 4 | grep unicornscan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which urlcrazy && man urlcrazy | cat | head -n 4 | grep urlcrazy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wireshark && man wireshark | cat | head -n 4 | grep wireshark | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WOL-E && man WOL-E | cat | head -n 4 | grep WOL-E | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Xplico && man Xplico | cat | head -n 4 | grep Xplico | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Vulnerability Analysis----------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BBQSQL && man BBQSQL | cat | head -n 4 | grep BBQSQL | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bed && man bed | cat | head -n 4 | grep bed | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool && man cisco-auditing-tool | cat | head -n 4 | grep cisco-auditing-tool | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-global-exploiter && man cisco-global-exploiter | cat | head -n 4 | grep cisco-global-exploiter | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-ocs && man cisco-ocs | cat | head -n 4 | grep cisco-ocs | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch && man cisco-torch | cat | head -n 4 | grep cisco-torch | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which copy-router-config && man copy-router-config | cat | head -n 4 | grep copy-router-config | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbpwaudit && man dbpwaudit | cat | head -n 4 | grep dbpwaudit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which doona && man doona | cat | head -n 4 | grep doona | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dotdotpwn && man dotdotpwn | cat | head -n 4 | grep dotdotpwn | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexorbase && man hexorbase | cat | head -n 4 | grep hexorbase | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inguma && man inguma | cat | head -n 4 | grep inguma | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jSQL injection && man jSQL injection | cat | head -n 4 | grep jSQL | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which lynis && man lynis | cat | head -n 4 | grep lynis | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nmap && man nmap | cat | head -n 4 | grep nmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ohrwurm && man ohrwurm | cat | head -n 4 | grep ohrwurm | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which openvas && man openvas | cat | head -n 4 | grep openvas | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Oscanner && man Oscanner | cat | head -n 4 | grep Oscanner | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powerfuzzer && man powerfuzzer | cat | head -n 4 | grep powerfuzzer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sfuzz && man sfuzz | cat | head -n 4 | grep sfuzz | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sidguesser && man sidguesser | cat | head -n 4 | grep sidguesser | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which siparmyknife && man siparmyKnife | cat | head -n 4 | grep siparmyknife | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap && man sqlmap | cat | head -n 4 | grep sqlmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlninja && man sqlninja | cat | head -n 4 | grep sqlninja | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlsus && man sqlsus | cat | head -n 4 | grep sqlsus | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tnscmd10g && man tnscmd10g | cat | head -n 4 | grep tnscmd10g | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which unix-privesc-check && man unix-privesc-check | cat | head -n 4 | grep unix-privesc-check | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia && man yersinia | cat | head -n 4 | grep yersinia | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Exploitation Tools--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which armitage && man armitage | cat | head -n 4 | grep armitage | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which backdoor factory && man backdoor factory | cat | head -n 4 | grep backdoor | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which beef && man beef | cat | head -n 4 | grep beef | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool && man cisco-auditing-tool | cat | head -n 4 | grep cisco-auditing-tool | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-global-exploiter && man cisco-global-exploiter | cat | head -n 4 | grep cisco-global-exploiter | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-ocs && man cisco-ocs | cat | head -n 4 | grep cisco-ocs | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch && man cisco-torch | cat | head -n 4 | grep cisco-torch | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which commix && man commix | cat | head -n 4 | grep commix | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crackle && man crackle | cat | head -n 4 | grep crackle | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which exploitdb && man exploitdb | cat | head -n 4 | grep exploitdb | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jboss-autopwn && man jboss-autopwn | cat | head -n 4 | grep jboss | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which linux exploit suggester && man linux exploit suggester | cat | head -n 4 | grep linux | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth && man maltego teeth | cat | head -n 4 | grep maltego teeth | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metasploit framework && man metasploit-framework | cat | head -n 4 | grep metasploit  | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which msfrpc && man msfrpc | cat | head -n 4 | grep msfrpc | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which routersploit && man routersploit | cat | head -n 4 | grep routersploit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which set && man setoolkit | cat | head -n 4 | grep set | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which shellnoob && man shellnoob | cat | head -n 4 | grep shellnoob | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap && man sqlmap | cat | head -n 4 | grep sqlmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia && man yersinia | cat | head -n 4 | grep yersinia | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Wireless Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airbase-ng && man airbase-ng | cat | head -n 4 | grep airbase | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aircrack-ng && man aircrack-ng | cat | head -n 4 | grep aircrack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airdecap-ng && man airdecap-ng | cat | head -n 4 | grep airdecap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airdecloak-ng && man airdecloak-ng | cat | head -n 4 | grep airdecloak | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aireplay-ng && man aireplay-ng | cat | head -n 4 | grep aireplay | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airmon-ng && man airmon-ng | cat | head -n 4 | grep airmon | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airodump-ng && man airodump-ng | cat | head -n 4 | grep airodump | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airodump-ng-oui-update && man airodump-ng-oui-update | cat | head -n 4 | grep airodump-ng=oui-update | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airolib-ng && man airolib-ng | cat | head -n 4 | grep airolib | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airserv-ng && man airserv-ng | cat | head -n 4 | grep airserv | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airtun-ng && man airtun-ng | cat | head -n 4 | grep airtun | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which asleap && man asleap | cat | head -n 4 | grep asleap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which besside-ng & man besside-ng | cat | head -n 4 | grep besside | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluelog && man bluelog | cat | head -n 4 | grep bluelog | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluemaho && man bluemaho | cat | head -n 4 | grep bluemaho | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluepot && man bluepot | cat | head -n 4 | grep bluepot | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which blueranger && man blueranger | cat | head -n 4 | grep blueranger | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluesnarfer && man bluesnarfer | cat | head -n 4 | grep bluesnarfer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bully && man bully | cat | head -n 4 | grep bully | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cowpatty && man cowpatty | cat | head -n 4 | grep cowpatty | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crackle && man crackle | cat | head -n 4 | grep crackle | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which eapmd5pass && man eapmd5pass | cat | head -n 4 | grep eapmd5pass | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which easside-ng && man easside-ng | cat | head -n 4 | grep easside | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fern wifi cracker && man fern wifi cracker | cat | head -n 4 | grep fern wifi cracker | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which freeradius-wpe && man freeradius-wpe | cat | head -n 4 | grep freeradius | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ghost phisher && man ghost phisher | cat | head -n 4 | grep ghost phisher | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which giskismet && man giskismet | cat | head -n 4 | grep giskismet | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gqrx && man gqrx | cat | head -n 4 | grep gqrx | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gr-scan && man gr-scan | cat | head -n 4 | grep gr-scan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hostapd-wpe && man hostapd-wpe | cat | head -n 4 | grep hostapd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ivstools && man ivstools | cat | head -n 4 | grep ivstools | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which kalibrate-rtl && man kalibrate-rtl | cat | head -n 4 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which killerBee && man killerbee | cat | head -n 4 | grep killerBee | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which kismet && man kismet | cat | head -n 4 | grep kismet | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which makeivs-ng && man makeivs-ng | cat | head -n 4| grep makeivs | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mdk3 && man mdk3 | cat | head -n 4 | grep mdk3 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfcuk && man mfcuk | cat | head -n 4| grep mfcuk | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfoc && man mfoc | cat | head -n 4 | grep mfoc | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfterm && man mfterm | cat | head -n 4 | grep mfterm | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which multimon-ng && man multimon-ng | cat | head -n 4 | grep multimon | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which packetforge-ng && man packetforge-ng | cat | head -n 4 | grep packetforge | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pixiewps && man pixiewps | cat | head -n 4 | grep pixiewps | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pyrit && man pyrit | cat | head -n 4 | grep pyrit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which reaver && man reaver  | cat | head -n 4 | grep reaver | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which redfang && man redfang  | cat | head -n 4 | grep redfang | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which RTLSDR Scanner && man RTLSDR Scanner  | cat | head -n 4 | grep Scanner | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which spooftooph && man spooftooph | cat | head -n 4 | grep spooftooph | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tkiptun-ng && man tkiptun | cat | head -n 4 | grep tkiptun | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wesside-ng && man wesside-ng  | cat | head -n 4 | grep wesside | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifi honey && wifi honey  | cat | head -n 4 | grep wifi | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifiphisher && man wifiphisher | cat | head -n 4 | grep wifiphisher | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wifitap && man wifitap  | cat | head -n 4 | grep wifitap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wifite && man wifite  | cat | head -n 4 | grep wifite | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wpaclean && man wpaclean  | cat | head -n 4 | grep wpaclean | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Forensics Tools-----------------|"  | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which binwalk && man binwalk  | cat | head -n 4 | grep binwalk | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bulk-extractor && man bulk-extractor  | cat | head -n 4 | grep bulk | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which capstone && man capstone  | cat | head -n 4 | grep capstone | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which chntpw && man chntpw  | cat | head -n 4 | grep chntpw | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cuckoo && man cuckoo  | cat | head -n 4 | grep cuckoo | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dc3dd && man dc3dd  | cat | head -n 4 | grep dc3dd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ddrescue && man ddrescue | cat | head -n 4 | grep ddrescue | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dff && man dff | cat | head -n 4 | grep dff | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which diStorm3 && man diStorm3 | cat | head -n 4 | grep diStorm3 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dumpzilla && man dumpzilla | cat | head -n 4 | grep dumpzilla | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which extundelete && man extundelete | cat | head -n 4 | grep extundelete | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which foremost && man foremost | cat | head -n 4 | grep foremost | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which galleta && man galleta | cat | head -n 4 | grep galleta | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which guymager && man guymager | cat | head -n 4 | grep guymager | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iphone backup analyzer && man iphone backup analyzer | cat | head -n 4 | grep iphone | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which p0f && man p0f | cat | head -n 4 | grep p0f | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdf-parser && man pdf-parser | cat | head -n 4 | grep pdf | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdfid && man pdfid | cat | head -n 4 | grep pdfid | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdgmail && man pdgmail | cat | head -n 4 | grep pdgmail | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which peepdf && man peepdf | cat | head -n 4 | grep peepdf | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which regripper && man regripper | cat | head -n 4 | grep regripper | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which volatility | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xplico && man Xplico | cat | head -n 4 | grep Xplico | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Web Applications----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apache-users && man apache-users | cat | head -n 4 | grep apace | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arachni && man arachni | cat | head -n 4 | grep arachni | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BBQSQL && man BBQSQL | cat | head -n 4 | grep BBQSQL | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which blindelephant && man blindelephant | cat | head -n 4 | grep blindelephant | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite && man burpsuite | cat | head -n 4 | grep burp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cutycapt && man cutycapt | cat | head -n 4 | grep cutycapt | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which davTest && man davTest | cat | head -n 4 | grep davTest | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which deblaze && man deblaze | cat | head -n 4 | grep deblaze | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dirb && man dirb | cat | head -n 4 | grep dirb | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dirbuster && man dirbuster | cat | head -n 4 | grep dirbuster | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fimap && man fimap | cat | head -n 4 | grep fimap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which funkload && man funkload | cat | head -n 4 | grep funkload | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gobuster && man gobuster | cat | head -n 4 | grep gobuster | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which grabber && man grabber | cat | head -n 4 | grep grabber | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hurl && hurl | cat | head -n 4 | grep hurl | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jboss-autopwn && man jboss-autopwn | cat | head -n 4 | grep jboss | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which joomscan && man joomscan | cat | head -n 4 | grep joomscan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jSQL Injection && man jSQL injection | cat | head -n 4 | grep jSQL | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth && man maltego teeth | cat | head -n 4 | grep maltego teeth | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nikto && man nikto | cat | head -n 4 | grep nikto | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which padbuster && man padbuster | cat | head -n 4 | grep padbuster | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which paros && man paros | cat | head -n 4 | grep paros | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which parsero && man parsero | cat | head -n 4 | grep parsero | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which plecost && man plecost | cat | head -n 4 | grep plecost | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powerfuzzer && man powerfuzzer | cat | head -n 4 | grep powerfuzzer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which proxystrike && man proxystrike | cat | head -n 4 | grep proxystrike | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which recon-ng && man recon -ng | cat | head -n 4 | grep recon-ng | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which skipfish && man skipfish | cat | head -n 4 | grep skipfish | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap && man sqlmap | cat | head -n 4 | grep sqlmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlninja && man sqlninja | cat | head -n 4 | grep sqlninja | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlsus && man sqlsus | cat | head -n 4 | grep sqlsus | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ua-tester && man ua-tester | cat | head -n 4 | grep ua-tester | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which uniscan && man uniscan | cat | head -n 4 | grep uniscan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which vega && man vega | cat | head -n 4 | grep vega | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which w3af && man w3af | cat | head -n 4 | grep w3af | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Webscarab && man webscarab | cat | head -n 4 | grep webscarab | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Webshag && man Webshag | cat | head -n 4  | grep webshag | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webslayer && man webslayer | cat | head -n 4  | grep webslayer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which websploit && man websploit | cat | head -n 4  | grep websploit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wfuzz && man wfuzz | cat | head -n 4 | grep wfuzz | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which whatweb && man whatweb | cat | head -n 4 | grep whatweb | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wpscan && man wpscan | cat | head -n 4 | grep wpscan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xsser && man xsser | cat | head -n 4 | grep xsser | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy && man zaproxy | cat | head -n 4 | grep zaproxy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Stress Testing------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dhcpig && man dhcpig | cat | head -n 4 | grep dhcpig | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which funkload && man funkload | cat | head -n 4 | grep funkload | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iaxflood && man iaxflood | cat | head -n 4 | grep iaxflood | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inundator && man inundator | cat | head -n 4 | grep inundator | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inviteflood && man inviteflood | cat | head -n 4 | grep inviteflood | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ipv6-toolkit && man ipv6-toolkit | cat | head -n 4 | grep ipv6-toolkit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mdk3 && man mdk3 | cat | head -n 4 | grep mdk3 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which reaver && man reaver  | cat | head -n 4 | grep reaver | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpflood && man rtpflood | cat | head -n 4 | grep rtpflood | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which slowhttptest && man slowhttptest | cat | head -n 4 | grep slowhttptest | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which t50 && man t50  | cat | head -n 4 | grep t50 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which termineter && man termineter | cat | head -n 4 | grep termineter | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-SSL-DOS && man THC-SSL-DOS | cat | head -n 4 | grep THC | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Sniffing & Spoofing-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite && man burpsuite | cat | head -n 4 | grep burp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnschef && man dnschef | cat | head -n 4 | grep dnschef | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fiked && man fiked | cat | head -n 4 | grep fiked | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hamster-sidejack && man hamster-sidejack | cat | head -n 4 | grep hamster | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexinject && man hexinject | cat | head -n 4 | grep hexinject | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iaxflood && man iaxflood | cat | head -n 4 | grep iaxflood | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inviteflood && man inviteflood | cat | head -n 4 | grep inviteflood | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ismtp && man ismtp | cat | head -4 | grep ismtp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which isr-evilgrade && man isr-evilgrade | cat | head -n 4 | grep evil | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mitmproxy && man mitmproxy | cat | head -n 4 | grep mitmproxy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ohrwurm && man ohrwurm | cat | head -n 4 | grep ohrwurm | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which protos-sip && man protos-sip | cat | head -n 4 | grep protos | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rebind && man rebind | cat | head -n 4 | grep rebind | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which responder && man responder | cat | head -n 4 | grep responder | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpbreak && man rtpbreak | cat | head -n 4 | grep rtpbreak | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpinsertsound && man rtpinsertsound | cat | head -n 4 | grep rtpinsertsound | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpmixsound && man rtpmixsound | cat | head -n 4 | grep rtpmixsound | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sctpscan | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which siparmyKnife && man siparmyKnife | cat | head -n 4 | grep siparmyknife | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sipp && man sipp | cat | head -n 4 | grep sipp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sipvicious && man sipvicious | cat | head -n 4 | grep sipvicious | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sniffjoke && man sniffjoke | cat | head -n 4 | grep sniffjoke | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslsplit && man sslsplit | cat | head -n 4 | grep sslsplit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslstrip && man sslstrip | cat | head -n 4 | grep sslstrip | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which voiphopper && man voiphopper | cat | head -n 4 | grep voiphopper | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webscarab && man webscarab | cat | head -n 4 | grep webscarab | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifi honey && wifi honey  | cat | head -n 4 | grep wifi | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wireshark && man wireshark | cat | head -n 4 | grep wireshark | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xspy && man xspy | cat | head -n 4 | grep xspy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia && man yersinia | cat | head -n 4 | grep yersinia | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy && man zaproxy | cat | head -n 4 | grep zaproxy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Password Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which acccheck && man acccheck | cat | head -n 4 | grep acccheck | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which brutespray && man brutespray | cat | head -n 4 | grep brutespray | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite && man burpsuite | cat | head -n 4 | grep burp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cewl && man cewl | cat | head -n 4 | grep cewl | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which chntpw && man chntpw  | cat | head -n 4 | grep chntpw | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool && man cisco-auditing-tool | cat | head -n 4 | grep cisco-auditing-tool | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cmospwd && man cmospwd | cat | head -n 4 | grep cmospwd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which creddump && man creddump | cat | head -n 4 | grep creddump | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crowbar && man crowbar | cat | head -n 4 | grep crowbar | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crunch && man crunch | cat | head -n 4 | grep crunch | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbpwaudit && man dbpwaudit | cat | head -n 4 | grep dbpwaudit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which findmyhash && man findmyhash | cat | head -n 4  grep findmuhash | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gpp-decrypt && man gpp-decrypt | cat | head -n 4 | grep gpp-decrypt | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hash-identifier && man hash-identifier | cat | head -n 4 | grep hash-identifier | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hashcat && man hashcat | cat | head -n 4 | grep hashcat | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexorbase && man hexorbase | cat | head -n 4 | grep hexorbase | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-Hydra && man THC-hydra | cat | head -n 4 | grep hydra | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which john && man john| cat | head -n 4 | grep john | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which johnny && man johnny | cat | head -n 4 | grep johnny | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which keimpx && man keimpx | cat | head -n 4 | grep keimpx | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth && man maltego teeth | cat | head -n 4 | grep maltego teeth | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maskprocessor && man maskprocessor | cat | head -n 4 | grep maskprocessor | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which multiforcer && man multiforcer | cat | head -n 4 | grep multiforcer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ncrack && man ncrack | cat | head -n 4 | grep ncrack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which oclgausscrack && man oclgausscrack | cat | head -n 4 | grep oclgausscrack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ophcrack && man ophcrack | cat | head -n 4 | grep ophcrack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pack && man pack | cat | head -n 4 | grep pack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which patator && man patator | cat | head -n 4 | grep patator | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which phrasendrescher && man phrasendrescher | cat | head -n 4 | grep phrasendrescher | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which polenum && man polenum | cat | head -n 4 | grep polenum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rainbowcrack && man rainbowcrack | cat | head -n 4 | grep rainbowcrack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rcracki-mt && man rcracki-mt | cat | head -n 4 | grep rcracki | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rsmangler && man rsmangler | cat | head -n 4 | grep rsmangler | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which seclists && man seclists | cat | head -n 4 | grep seclists | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqldict && man sqldict | cat | head -n 4 | grep sqldict | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which statsprocessor && man statsprocessor | cat | head -n 4 | grep statsprocessor | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-pptp-bruter && man THC-pptp-bruter | cat | head -n 4 | grep THC | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which truecrack && man truecrack | cat | head -n 4 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webscarab && man webscarab | cat | head -n 4 | grep webscarab | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wordlists && man wordlists | cat | head -n 4 | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy && man zaproxy | cat | head -n 4 | grep zaproxy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Maintaining Access--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cryptcat && man cryptcat | cat | head -n 4 | grep cryptcat | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cymothoa && man cymothoa | cat | head -n 4 | grep cymotha | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbd && man dbd | cat | head -n 4  | grep dbd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dns2tcp && man dns2tcp | cat | head -n 4 | grep dns2tcp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which http-tunnel && man http-tunnel | cat | head -n 4 | grep http | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which httptunnel && man httptunnel | cat | head -n 4 | grep httptunnel | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which intersect && man intersect | cat | head -n 4 | grep intersect | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nishang && man nishang | cat | head -n 4 | grep nishang | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which polenum && man polenum | cat | head -n 4 | grep polenum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powersploit && man powersploit | cat | head -n 4 | grep powersploit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pwnat && man pwnat | cat | head -n 4 | grep pwnat | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ridenum && man ridenum | cat | head -n 4 | grep ridenum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sbd && man sbd | cat | head -n 4 | grep sbd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which shellter && man shellter | cat | head -n 4 | grep shellter | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which U3-Pwn && man U3-Pwn | cat | head -n 4 | grep U3-Pwn | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webshells && man webshells | cat | head -n 4 | grep webshells | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which weevely && man weevely | cat | head -n 4 | grep weevely | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which winexe && man winexe | cat | head -n 4 | grep winexe | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Hardware Hacking----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which android-sdk && man android-sdk | cat | head -n 4 | grep android | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apktool && man apktool | cat | head -n 4 | grep apktool | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arduino && man arduino | cat | head -n 4 | grep arduino | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dex2jar && man dex2jar | cat | head -n 4 | grep dex2jar | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sakis3G && man sakis3G | cat | head -n 4 | grep sakis3G | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smali && man smali | cat | head -n 4 | grep smali | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Reverse Engineering-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apktool && man apktool | cat | head -n 4 | grep apktool | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dex2jar && man dex2jar | cat | head -n 4 | grep dex2jar | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which diStorm3 && man diStorm3 | cat | head -n 4 | grep diStorm3 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which edb-debugger && man edb-debugger | cat | head -n 4 | grep edb-debugger | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jad && man jad | cat | head -n 4 | grep jad | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which javasnoop && man javasnoop | cat | head -n 4 | grep javasnoop | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jd-gui && man jd-gui | cat | head -n 4 | grep jd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ollyD=dbg && man ollyD=dbg | cat | head -n 4 | grep olly | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smali && man smali | cat | head -n 4 | grep smali | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which valgrind && man valgrind | cat | head -n 4 | grep valgrind | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yara && man yara | cat | head -n 4 | grep yara | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Reporting Tools-----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which casefile && man casefile | cat | head -n 4 | grep casefile | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cherrytree && man cherrytree | cat | head -n 4 | grep cherrytree | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cutycapt && man cutycapt | cat | head -n 4 | grep cutycapt | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dos2unix && man dos2unix | cat | head -n 4 | grep dos2unix | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dradis && man dradis | cat | head -n 4 | grep dradis | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which magictree && man magictree | cat | head -n 4 | grep magictree | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metagoofil && man metagoofil | cat | head -n 4 | grep metagoofil | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nipper-ng && man nipper-ng | cat | head -n 4 | grep nipper | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pipal && man pipal | cat | head -n 4 | grep pipal | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rdpy && man rdpy | cat | head -n 4 | grep rdpy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Backdoors-----------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which netcat && man netcat  | cat | head -n 4 | grep netcat | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ssh && man ssh  | cat | head -n 4 | grep ssh | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which vsftpd | grep / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Remote Share Services-----------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which samba && man samba  | cat | head -n 4 | grep samba | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Database Systems----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis postgresql | grep / && man postgresql | cat | head -n 4 | grep postgre | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mysql && man mysql  | cat | head -n 4 | grep mysql | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Web Services--------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis wordpress | grep / && man wordpress| cat | head -n 4 | grep wordpress | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apache && man apache  | cat | head -n 4 | grep apache | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which www && man www  | cat | head -n 4 | grep www | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Other Known Tools---------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xhydra && man xhydra | cat | head -n 4 | grep xhydra | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ettercap && man ettercap  | cat | head -n 4 | grep ettercap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zenmap && man zenmap  | cat | head -n 4 | grep zenmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tcpdump && man tcpdump  | cat | head -n 4 | grep tcpdump | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BackTrack  && man backtrack | cat | head -n 4 | grep back | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sysinternals && man sysinternals  | cat | head -n 4 | grep sys | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which scapy && man scapy | cat | head -n 4 | grep scapy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nemisis && man nemisis | cat | head -n 4 | grep nemisis | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which setoolkit && man setoolkit  | cat | head -n 4 | grep set | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tor && man tor  | cat | head -n 4 | grep tor | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which torsocks && man torsocks | cat | head -n 4 | grep torsocks | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BeEF && man beef | cat | head -n 4 | grep beef | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "------------------------------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "[SUCCESS] HTS.sh was ran on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log