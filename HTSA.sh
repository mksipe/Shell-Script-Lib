#!/bin/sh
date=$(date -u)
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root. This instance will be logged."
    echo "[FAIL] $USER attempted to run the search on $date." | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
    exit
fi
echo "HTSA.sh started on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
touch /bin/lib/sh/MK3S/data/Exploit-Search.txt
chmod 755 /bin/lib/sh/MK3S/data/Exploit-Search.txt 
cat /dev/null > /bin/lib/sh/MK3S/data/Exploit-Search.txt
touch /bin/lib/sh/MK3S/data/Exploit-Search-whereis.txt
cat /dev/null > /bin/lib/sh/MK3S/data/Exploit-Search-whereis.txt

echo "----------Information Gathering-----------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which acccheck && man acccheck | cat | head -n 4 | grep -i acccheck | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ace-voip && man ace-voip | cat | head -n 4 | grep -i ace-voip | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which amap && man amap | cat | head -n 4 | grep -i amap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apt2 && man apt2 | cat | head -n 4 | grep -i apt2 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arp-scan && man arp-scan | cat | head -n 4 | grep -i arp-scan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which automater && man automater | cat | head -n 4 | grep -i automater | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bing-ip2hosts && man bing-ip2hosts | cat | head -n 4 | grep -i bing-ip2hosts | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which braa && man braa | cat | head -n 4 | grep -i braa | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which casefile && man casefile | cat | head -n 4 | grep -i casefile | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cdpsarf && man cdpsarf | cat | head -n 4 | grep -i cdpsarf | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch && man cisco-torch | cat | head -n 4 | grep -i cisco-torch | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cookie cadger && man cookie cadger | cat | head -n 4 | grep -i cookie cadger | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which copy-router-config && man copy-router-config | cat | head -n 4 | grep -i copy-router-config | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dmitry && man dmitry | cat | head -n 4 | grep -i dmitry | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnmap && man dnmap | cat | head -n 4 | grep -i dnmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsenum && man dnsenum | cat | head -n 4 | grep -i dnsenum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsmap && man dnsmap | cat | head -n 4 | grep -i dnsmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsrecon && man dnsrecon | cat | head -n 4 | grep -i dnsrecon | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnstracer && man dnstracer | cat| head -n 4 | grep -i dnstracer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnswalk && man dnswalk | cat | head -n 4 | grep -i dnswalk | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dotdotpwn && man dotdotpwn | cat | head -n 4 | grep -i dotdotpwn | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which enum4linux && man enum4linux | cat | head -n 4 | grep -i enum4linux | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which enumiax && man enumiax | cat | head -n 4 | grep -i enumiax | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which eyewitness && man eyewitness | cat | head -n 4 | grep -i eyewitness | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which faraday && man faraday | cat | head -n 4 | grep -i faraday | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fierce && man fierce | cat | head -n 4 | grep -i fierce | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which firewalk && man firewalk | cat | head -n 4 | grep -i firewalk | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fragroute && man fragroute | cat | head -n 4 | grep -i fragroute | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fragrouter && man fragrouter | cat | head -n 4 | grep -i fragrouter | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ghost phisher && man ghost phisher | cat | head -n 4 | grep -i ghost phisher | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which golismero && man golismero | cat | head -n 4 | grep -i golismero | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which goofile && man goofile | cat | head -n 4 | grep -i goofile | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hping3 && man hping3 | cat | head -n 4 | grep -i hping3 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ident-user-enum && man ident-user-enum | cat | head -n 4 | grep -i ident-user-enum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inspy && man inspy | cat | head -n 4 | grep -i inspy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which intrace && man intrace | cat | head -n 4 | grep -i intrace | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ismtp && man ismtp | cat | head -4 | grep -i ismtp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which lbd && man lbd | cat | head -n 4 | grep -i lbd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth && man maltego teeth | cat | head -n 4 | grep -i maltego teeth | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which masscan && man masscan | cat | head -n 4 | grep -i masscan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metagoofil && man metagoofil | cat | head -n 4 | grep -i metagoofil | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which miranda && man miranda | cat | head -n 4 | grep -i miranda | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nbtscan-unixwiz && man nbtscan-unixwiz | cat | head -n 4 | grep -i nbtscan-unixwiz | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nikto && man nikto | cat | head -n 4 | grep -i nikto | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nmap && man nmap | cat | head -n 4 | grep -i nmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ntop && man ntop | cat | head -n 4 | grep -i ntop | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which osrframework && man osrframework | cat | head -n 4 | grep -i osrframework | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which p0f && man p0f | cat | head -n 4 | grep -i p0f | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which parsero && man parsero | cat | head -n 4 | grep -i parsero | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which recon-ng && man recon -ng | cat | head -n 4 | grep -i recon-ng | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which set && man setoolkit | cat | head -n 4 | grep -i set | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smbmap && man smbmap | cat | head -n 4 | grep -i smbmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smtp-user-enum && man smtp-user-enum | cat | head -n 4 | grep -i smtp-user-enum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which snmp-check && man snmp-check | cat | head -n 4 | grep -i snmp-check | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sparta && man sparta | cat | head -n 4 | grep -i sparta | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslcaudit && man sslcaudit | cat | head -n 4 | grep -i sslcaudit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslsplit && man sslsplit | cat | head -n 4 | grep -i sslsplit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslstrip && man sslstrip | cat | head -n 4 | grep -i sslstrip | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aalyze && man aalyze | cat | head -n 4 | grep -i aalyze | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sublist3r && man sublist3r | cat | head -n 4 | grep -i sublist3r | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep -i THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which theharvester && man theharvester | cat | head -n 4 | grep -i theharvester | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tlssled && man tlssled | cat | head -n 4  | grep -i tlssled | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which twofi && man twofi | cat | head -n 4 | grep -i twofi | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which unicornscan && man unicornscan | cat | head -n 4 | grep -i unicornscan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which urlcrazy && man urlcrazy | cat | head -n 4 | grep -i urlcrazy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wireshark && man wireshark | cat | head -n 4 | grep -i wireshark | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WOL-E && man WOL-E | cat | head -n 4 | grep -i WOL-E | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Xplico && man Xplico | cat | head -n 4 | grep -i Xplico | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Vulnerability Analysis----------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BBQSQL && man BBQSQL | cat | head -n 4 | grep -i BBQSQL | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bed && man bed | cat | head -n 4 | grep -i bed | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool && man cisco-auditing-tool | cat | head -n 4 | grep -i cisco-auditing-tool | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-global-exploiter && man cisco-global-exploiter | cat | head -n 4 | grep -i cisco-global-exploiter | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-ocs && man cisco-ocs | cat | head -n 4 | grep -i cisco-ocs | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch && man cisco-torch | cat | head -n 4 | grep -i cisco-torch | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which copy-router-config && man copy-router-config | cat | head -n 4 | grep -i copy-router-config | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbpwaudit && man dbpwaudit | cat | head -n 4 | grep -i dbpwaudit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which doona && man doona | cat | head -n 4 | grep -i doona | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dotdotpwn && man dotdotpwn | cat | head -n 4 | grep -i dotdotpwn | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexorbase && man hexorbase | cat | head -n 4 | grep -i hexorbase | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inguma && man inguma | cat | head -n 4 | grep -i inguma | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jSQL injection && man jSQL injection | cat | head -n 4 | grep -i jSQL | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which lynis && man lynis | cat | head -n 4 | grep -i lynis | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nmap && man nmap | cat | head -n 4 | grep -i nmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ohrwurm && man ohrwurm | cat | head -n 4 | grep -i ohrwurm | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which openvas && man openvas | cat | head -n 4 | grep -i openvas | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Oscanner && man Oscanner | cat | head -n 4 | grep -i Oscanner | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powerfuzzer && man powerfuzzer | cat | head -n 4 | grep -i powerfuzzer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sfuzz && man sfuzz | cat | head -n 4 | grep -i sfuzz | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sidguesser && man sidguesser | cat | head -n 4 | grep -i sidguesser | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which siparmyknife && man siparmyKnife | cat | head -n 4 | grep -i siparmyknife | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap && man sqlmap | cat | head -n 4 | grep -i sqlmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlninja && man sqlninja | cat | head -n 4 | grep -i sqlninja | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlsus && man sqlsus | cat | head -n 4 | grep -i sqlsus | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep -i THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tnscmd10g && man tnscmd10g | cat | head -n 4 | grep -i tnscmd10g | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which unix-privesc-check && man unix-privesc-check | cat | head -n 4 | grep -i unix-privesc-check | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia && man yersinia | cat | head -n 4 | grep -i yersinia | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Exploitation Tools--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which armitage && man armitage | cat | head -n 4 | grep -i armitage | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which backdoor factory && man backdoor factory | cat | head -n 4 | grep -i backdoor | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which beef && man beef | cat | head -n 4 | grep -i beef | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool && man cisco-auditing-tool | cat | head -n 4 | grep -i cisco-auditing-tool | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-global-exploiter && man cisco-global-exploiter | cat | head -n 4 | grep -i cisco-global-exploiter | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-ocs && man cisco-ocs | cat | head -n 4 | grep -i cisco-ocs | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch && man cisco-torch | cat | head -n 4 | grep -i cisco-torch | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which commix && man commix | cat | head -n 4 | grep -i commix | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crackle && man crackle | cat | head -n 4 | grep -i crackle | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which exploitdb && man exploitdb | cat | head -n 4 | grep -i exploitdb | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jboss-autopwn && man jboss-autopwn | cat | head -n 4 | grep -i jboss | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which linux exploit suggester && man linux exploit suggester | cat | head -n 4 | grep -i linux | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth && man maltego teeth | cat | head -n 4 | grep -i maltego teeth | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metasploit framework && man metasploit-framework | cat | head -n 4 | grep -i metasploit  | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which msfrpc && man msfrpc | cat | head -n 4 | grep -i msfrpc | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which routersploit && man routersploit | cat | head -n 4 | grep -i routersploit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which set && man setoolkit | cat | head -n 4 | grep -i set | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which shellnoob && man shellnoob | cat | head -n 4 | grep -i shellnoob | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap && man sqlmap | cat | head -n 4 | grep -i sqlmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep -i THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia && man yersinia | cat | head -n 4 | grep -i yersinia | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Wireless Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airbase-ng && man airbase-ng | cat | head -n 4 | grep -i airbase | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aircrack-ng && man aircrack-ng | cat | head -n 4 | grep -i aircrack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airdecap-ng && man airdecap-ng | cat | head -n 4 | grep -i airdecap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airdecloak-ng && man airdecloak-ng | cat | head -n 4 | grep -i airdecloak | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aireplay-ng && man aireplay-ng | cat | head -n 4 | grep -i aireplay | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airmon-ng && man airmon-ng | cat | head -n 4 | grep -i airmon | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airodump-ng && man airodump-ng | cat | head -n 4 | grep -i airodump | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airodump-ng-oui-update && man airodump-ng-oui-update | cat | head -n 4 | grep -i airodump-ng=oui-update | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airolib-ng && man airolib-ng | cat | head -n 4 | grep -i airolib | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airserv-ng && man airserv-ng | cat | head -n 4 | grep -i airserv | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airtun-ng && man airtun-ng | cat | head -n 4 | grep -i airtun | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which asleap && man asleap | cat | head -n 4 | grep -i asleap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which besside-ng && man besside-ng | cat | head -n 4 | grep -i besside | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluelog && man bluelog | cat | head -n 4 | grep -i bluelog | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluemaho && man bluemaho | cat | head -n 4 | grep -i bluemaho | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluepot && man bluepot | cat | head -n 4 | grep -i bluepot | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which blueranger && man blueranger | cat | head -n 4 | grep -i blueranger | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluesnarfer && man bluesnarfer | cat | head -n 4 | grep -i bluesnarfer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bully && man bully | cat | head -n 4 | grep -i bully | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cowpatty && man cowpatty | cat | head -n 4 | grep -i cowpatty | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crackle && man crackle | cat | head -n 4 | grep -i crackle | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which eapmd5pass && man eapmd5pass | cat | head -n 4 | grep -i eapmd5pass | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which easside-ng && man easside-ng | cat | head -n 4 | grep -i easside | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fern wifi cracker && man fern wifi cracker | cat | head -n 4 | grep -i fern wifi cracker | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which freeradius-wpe && man freeradius-wpe | cat | head -n 4 | grep -i freeradius | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ghost phisher && man ghost phisher | cat | head -n 4 | grep -i ghost phisher | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which giskismet && man giskismet | cat | head -n 4 | grep -i giskismet | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gqrx && man gqrx | cat | head -n 4 | grep -i gqrx | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gr-scan && man gr-scan | cat | head -n 4 | grep -i gr-scan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hostapd-wpe && man hostapd-wpe | cat | head -n 4 | grep -i hostapd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ivstools && man ivstools | cat | head -n 4 | grep -i ivstools | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which kalibrate-rtl && man kalibrate-rtl | cat | head -n 4 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which killerBee && man killerbee | cat | head -n 4 | grep -i killerBee | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which kismet && man kismet | cat | head -n 4 | grep -i kismet | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which makeivs-ng && man makeivs-ng | cat | head -n 4| grep -i makeivs | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mdk3 && man mdk3 | cat | head -n 4 | grep -i mdk3 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfcuk && man mfcuk | cat | head -n 4| grep -i mfcuk | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfoc && man mfoc | cat | head -n 4 | grep -i mfoc | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfterm && man mfterm | cat | head -n 4 | grep -i mfterm | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which multimon-ng && man multimon-ng | cat | head -n 4 | grep -i multimon | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which packetforge-ng && man packetforge-ng | cat | head -n 4 | grep -i packetforge | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pixiewps && man pixiewps | cat | head -n 4 | grep -i pixiewps | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pyrit && man pyrit | cat | head -n 4 | grep -i pyrit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which reaver && man reaver  | cat | head -n 4 | grep -i reaver | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which redfang && man redfang  | cat | head -n 4 | grep -i redfang | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which RTLSDR Scanner && man RTLSDR Scanner  | cat | head -n 4 | grep -i Scanner | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which spooftooph && man spooftooph | cat | head -n 4 | grep -i spooftooph | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tkiptun-ng && man tkiptun | cat | head -n 4 | grep -i tkiptun | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wesside-ng && man wesside-ng  | cat | head -n 4 | grep -i wesside | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifi honey && wifi honey  | cat | head -n 4 | grep -i wifi | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifiphisher && man wifiphisher | cat | head -n 4 | grep -i wifiphisher | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifitap && man wifitap  | cat | head -n 4 | grep -i wifitap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifite && man wifite  | cat | head -n 4 | grep -i wifite | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wpaclean && man wpaclean  | cat | head -n 4 | grep -i wpaclean | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Forensics Tools-----------------|"  | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which binwalk && man binwalk  | cat | head -n 4 | grep -i binwalk | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bulk-extractor && man bulk-extractor  | cat | head -n 4 | grep -i bulk | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which capstone && man capstone  | cat | head -n 4 | grep -i capstone | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which chntpw && man chntpw  | cat | head -n 4 | grep -i chntpw | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cuckoo && man cuckoo  | cat | head -n 4 | grep -i cuckoo | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dc3dd && man dc3dd  | cat | head -n 4 | grep -i dc3dd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ddrescue && man ddrescue | cat | head -n 4 | grep -i ddrescue | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dff && man dff | cat | head -n 4 | grep -i dff | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which diStorm3 && man diStorm3 | cat | head -n 4 | grep -i diStorm3 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dumpzilla && man dumpzilla | cat | head -n 4 | grep -i dumpzilla | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which extundelete && man extundelete | cat | head -n 4 | grep -i extundelete | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which foremost && man foremost | cat | head -n 4 | grep -i foremost | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which galleta && man galleta | cat | head -n 4 | grep -i galleta | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which guymager && man guymager | cat | head -n 4 | grep -i guymager | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iphone backup analyzer && man iphone backup analyzer | cat | head -n 4 | grep -i iphone | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which p0f && man p0f | cat | head -n 4 | grep -i p0f | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdf-parser && man pdf-parser | cat | head -n 4 | grep -i pdf | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdfid && man pdfid | cat | head -n 4 | grep -i pdfid | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdgmail && man pdgmail | cat | head -n 4 | grep -i pdgmail | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which peepdf && man peepdf | cat | head -n 4 | grep -i peepdf | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which regripper && man regripper | cat | head -n 4 | grep -i regripper | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which volatility | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xplico && man Xplico | cat | head -n 4 | grep -i Xplico | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Web Applications----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apache-users && man apache-users | cat | head -n 4 | grep -i apace | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arachni && man arachni | cat | head -n 4 | grep -i arachni | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BBQSQL && man BBQSQL | cat | head -n 4 | grep -i BBQSQL | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which blindelephant && man blindelephant | cat | head -n 4 | grep -i blindelephant | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite && man burpsuite | cat | head -n 4 | grep -i burp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cutycapt && man cutycapt | cat | head -n 4 | grep -i cutycapt | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which davTest && man davTest | cat | head -n 4 | grep -i davTest | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which deblaze && man deblaze | cat | head -n 4 | grep -i deblaze | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dirb && man dirb | cat | head -n 4 | grep -i dirb | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dirbuster && man dirbuster | cat | head -n 4 | grep -i dirbuster | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fimap && man fimap | cat | head -n 4 | grep -i fimap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which funkload && man funkload | cat | head -n 4 | grep -i funkload | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gobuster && man gobuster | cat | head -n 4 | grep -i gobuster | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which grabber && man grabber | cat | head -n 4 | grep -i grabber | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hurl && hurl | cat | head -n 4 | grep -i hurl | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jboss-autopwn && man jboss-autopwn | cat | head -n 4 | grep -i jboss | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which joomscan && man joomscan | cat | head -n 4 | grep -i joomscan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jSQL Injection && man jSQL injection | cat | head -n 4 | grep -i jSQL | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth && man maltego teeth | cat | head -n 4 | grep -i maltego teeth | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nikto && man nikto | cat | head -n 4 | grep -i nikto | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which padbuster && man padbuster | cat | head -n 4 | grep -i padbuster | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which paros && man paros | cat | head -n 4 | grep -i paros | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which parsero && man parsero | cat | head -n 4 | grep -i parsero | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which plecost && man plecost | cat | head -n 4 | grep -i plecost | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powerfuzzer && man powerfuzzer | cat | head -n 4 | grep -i powerfuzzer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which proxystrike && man proxystrike | cat | head -n 4 | grep -i proxystrike | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which recon-ng && man recon -ng | cat | head -n 4 | grep -i recon-ng | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which skipfish && man skipfish | cat | head -n 4 | grep -i skipfish | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap && man sqlmap | cat | head -n 4 | grep -i sqlmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlninja && man sqlninja | cat | head -n 4 | grep -i sqlninja | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlsus && man sqlsus | cat | head -n 4 | grep -i sqlsus | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ua-tester && man ua-tester | cat | head -n 4 | grep -i ua-tester | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which uniscan && man uniscan | cat | head -n 4 | grep -i uniscan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which vega && man vega | cat | head -n 4 | grep -i vega | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which w3af && man w3af | cat | head -n 4 | grep -i w3af | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Webscarab && man webscarab | cat | head -n 4 | grep -i webscarab | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Webshag && man Webshag | cat | head -n 4  | grep -i webshag | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webslayer && man webslayer | cat | head -n 4  | grep -i webslayer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which websploit && man websploit | cat | head -n 4  | grep -i websploit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wfuzz && man wfuzz | cat | head -n 4 | grep -i wfuzz | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which whatweb && man whatweb | cat | head -n 4 | grep -i whatweb | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wpscan && man wpscan | cat | head -n 4 | grep -i wpscan | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xsser && man xsser | cat | head -n 4 | grep -i xsser | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy && man zaproxy | cat | head -n 4 | grep -i zaproxy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Stress Testing------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dhcpig && man dhcpig | cat | head -n 4 | grep -i dhcpig | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which funkload && man funkload | cat | head -n 4 | grep -i funkload | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iaxflood && man iaxflood | cat | head -n 4 | grep -i iaxflood | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inundator && man inundator | cat | head -n 4 | grep -i inundator | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inviteflood && man inviteflood | cat | head -n 4 | grep -i inviteflood | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ipv6-toolkit && man ipv6-toolkit | cat | head -n 4 | grep -i ipv6-toolkit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mdk3 && man mdk3 | cat | head -n 4 | grep -i mdk3 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which reaver && man reaver  | cat | head -n 4 | grep -i reaver | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpflood && man rtpflood | cat | head -n 4 | grep -i rtpflood | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which slowhttptest && man slowhttptest | cat | head -n 4 | grep -i slowhttptest | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which t50 && man t50  | cat | head -n 4 | grep -i t50 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which termineter && man termineter | cat | head -n 4 | grep -i termineter | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep -i THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-SSL-DOS && man THC-SSL-DOS | cat | head -n 4 | grep -i THC | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Sniffing & Spoofing-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite && man burpsuite | cat | head -n 4 | grep -i burp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnschef && man dnschef | cat | head -n 4 | grep -i dnschef | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fiked && man fiked | cat | head -n 4 | grep -i fiked | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hamster-sidejack && man hamster-sidejack | cat | head -n 4 | grep -i hamster | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexinject && man hexinject | cat | head -n 4 | grep -i hexinject | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iaxflood && man iaxflood | cat | head -n 4 | grep -i iaxflood | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inviteflood && man inviteflood | cat | head -n 4 | grep -i inviteflood | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ismtp && man ismtp | cat | head -4 | grep -i ismtp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which isr-evilgrade && man isr-evilgrade | cat | head -n 4 | grep -i evil | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mitmproxy && man mitmproxy | cat | head -n 4 | grep -i mitmproxy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ohrwurm && man ohrwurm | cat | head -n 4 | grep -i ohrwurm | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which protos-sip && man protos-sip | cat | head -n 4 | grep -i protos | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rebind && man rebind | cat | head -n 4 | grep -i rebind | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which responder && man responder | cat | head -n 4 | grep -i responder | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpbreak && man rtpbreak | cat | head -n 4 | grep -i rtpbreak | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpinsertsound && man rtpinsertsound | cat | head -n 4 | grep -i rtpinsertsound | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpmixsound && man rtpmixsound | cat | head -n 4 | grep -i rtpmixsound | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sctpscan | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which siparmyKnife && man siparmyKnife | cat | head -n 4 | grep -i siparmyknife | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sipp && man sipp | cat | head -n 4 | grep -i sipp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sipvicious && man sipvicious | cat | head -n 4 | grep -i sipvicious | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sniffjoke && man sniffjoke | cat | head -n 4 | grep -i sniffjoke | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslsplit && man sslsplit | cat | head -n 4 | grep -i sslsplit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslstrip && man sslstrip | cat | head -n 4 | grep -i sslstrip | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep -i THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which voiphopper && man voiphopper | cat | head -n 4 | grep -i voiphopper | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webscarab && man webscarab | cat | head -n 4 | grep -i webscarab | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifi honey && wifi honey  | cat | head -n 4 | grep -i wifi | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wireshark && man wireshark | cat | head -n 4 | grep -i wireshark | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xspy && man xspy | cat | head -n 4 | grep -i xspy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia && man yersinia | cat | head -n 4 | grep -i yersinia | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy && man zaproxy | cat | head -n 4 | grep -i zaproxy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Password Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which acccheck && man acccheck | cat | head -n 4 | grep -i acccheck | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which brutespray && man brutespray | cat | head -n 4 | grep -i brutespray | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite && man burpsuite | cat | head -n 4 | grep -i burp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cewl && man cewl | cat | head -n 4 | grep -i cewl | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which chntpw && man chntpw  | cat | head -n 4 | grep -i chntpw | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool && man cisco-auditing-tool | cat | head -n 4 | grep -i cisco-auditing-tool | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cmospwd && man cmospwd | cat | head -n 4 | grep -i cmospwd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which creddump && man creddump | cat | head -n 4 | grep -i creddump | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crowbar && man crowbar | cat | head -n 4 | grep -i crowbar | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crunch && man crunch | cat | head -n 4 | grep -i crunch | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbpwaudit && man dbpwaudit | cat | head -n 4 | grep -i dbpwaudit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which findmyhash && man findmyhash | cat | head -n 4  grep -i findmuhash | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gpp-decrypt && man gpp-decrypt | cat | head -n 4 | grep -i gpp-decrypt | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hash-identifier && man hash-identifier | cat | head -n 4 | grep -i hash-identifier | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hashcat && man hashcat | cat | head -n 4 | grep -i hashcat | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexorbase && man hexorbase | cat | head -n 4 | grep -i hexorbase | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hydra && man hydra | cat | head -n 4 | grep -i hydra | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which john && man john| cat | head -n 4 | grep -i john | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which johnny && man johnny | cat | head -n 4 | grep -i johnny | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which keimpx && man keimpx | cat | head -n 4 | grep -i keimpx | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth && man maltego teeth | cat | head -n 4 | grep -i maltego teeth | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maskprocessor && man maskprocessor | cat | head -n 4 | grep -i maskprocessor | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which multiforcer && man multiforcer | cat | head -n 4 | grep -i multiforcer | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ncrack && man ncrack | cat | head -n 4 | grep -i ncrack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which oclgausscrack && man oclgausscrack | cat | head -n 4 | grep -i oclgausscrack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ophcrack && man ophcrack | cat | head -n 4 | grep -i Ophcrack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pack && man pack | cat | head -n 4 | grep -i pack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which patator && man patator | cat | head -n 4 | grep -i patator | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which phrasendrescher && man phrasendrescher | cat | head -n 4 | grep -i phrasendrescher | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which polenum && man polenum | cat | head -n 4 | grep -i polenum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rainbowcrack && man rainbowcrack | cat | head -n 4 | grep -i rainbowcrack | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rcracki-mt && man rcracki-mt | cat | head -n 4 | grep -i rcracki | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rsmangler && man rsmangler | cat | head -n 4 | grep -i rsmangler | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which seclists && man seclists | cat | head -n 4 | grep -i seclists | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqldict && man sqldict | cat | head -n 4 | grep -i sqldict | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which statsprocessor && man statsprocessor | cat | head -n 4 | grep -i statsprocessor | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-pptp-bruter && man THC-pptp-bruter | cat | head -n 4 | grep -i THC | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which truecrack && man truecrack | cat | head -n 4 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webscarab && man webscarab | cat | head -n 4 | grep -i webscarab | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wordlists && man wordlists | cat | head -n 4 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy && man zaproxy | cat | head -n 4 | grep -i zaproxy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Maintaining Access--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cryptcat && man cryptcat | cat | head -n 4 | grep -i cryptcat | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cymothoa && man cymothoa | cat | head -n 4 | grep -i cymotha | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbd && man dbd | cat | head -n 4  | grep -i dbd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dns2tcp && man dns2tcp | cat | head -n 4 | grep -i dns2tcp | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which http-tunnel && man http-tunnel | cat | head -n 4 | grep -i http | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which httptunnel && man httptunnel | cat | head -n 4 | grep -i httptunnel | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which intersect && man intersect | cat | head -n 4 | grep -i intersect | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nishang && man nishang | cat | head -n 4 | grep -i nishang | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which polenum && man polenum | cat | head -n 4 | grep -i polenum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powersploit && man powersploit | cat | head -n 4 | grep -i powersploit | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pwnat && man pwnat | cat | head -n 4 | grep -i pwnat | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ridenum && man ridenum | cat | head -n 4 | grep -i ridenum | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sbd && man sbd | cat | head -n 4 | grep -i sbd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which shellter && man shellter | cat | head -n 4 | grep -i shellter | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which U3-Pwn && man U3-Pwn | cat | head -n 4 | grep -i U3-Pwn | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webshells && man webshells | cat | head -n 4 | grep -i webshells | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which weevely && man weevely | cat | head -n 4 | grep -i weevely | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which winexe && man winexe | cat | head -n 4 | grep -i winexe | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Hardware Hacking----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which android-sdk && man android-sdk | cat | head -n 4 | grep -i android | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apktool && man apktool | cat | head -n 4 | grep -i apktool | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arduino && man arduino | cat | head -n 4 | grep -i arduino | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dex2jar && man dex2jar | cat | head -n 4 | grep -i dex2jar | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sakis3G && man sakis3G | cat | head -n 4 | grep -i sakis3G | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smali && man smali | cat | head -n 4 | grep -i smali | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Reverse Engineering-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apktool && man apktool | cat | head -n 4 | grep -i apktool | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dex2jar && man dex2jar | cat | head -n 4 | grep -i dex2jar | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which diStorm3 && man diStorm3 | cat | head -n 4 | grep -i diStorm3 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which edb-debugger && man edb-debugger | cat | head -n 4 | grep -i edb-debugger | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jad && man jad | cat | head -n 4 | grep -i jad | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which javasnoop && man javasnoop | cat | head -n 4 | grep -i javasnoop | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jd-gui && man jd-gui | cat | head -n 4 | grep -i jd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ollyD=dbg && man ollyD=dbg | cat | head -n 4 | grep -i olly | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smali && man smali | cat | head -n 4 | grep -i smali | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which valgrind && man valgrind | cat | head -n 4 | grep -i valgrind | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yara && man yara | cat | head -n 4 | grep -i yara | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Reporting Tools-----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which casefile && man casefile | cat | head -n 4 | grep -i casefile | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cherrytree && man cherrytree | cat | head -n 4 | grep -i cherrytree | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cutycapt && man cutycapt | cat | head -n 4 | grep -i cutycapt | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dos2unix && man dos2unix | cat | head -n 4 | grep -i dos2unix | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dradis && man dradis | cat | head -n 4 | grep -i dradis | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which magictree && man magictree | cat | head -n 4 | grep -i magictree | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metagoofil && man metagoofil | cat | head -n 4 | grep -i metagoofil | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nipper-ng && man nipper-ng | cat | head -n 4 | grep -i nipper | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pipal && man pipal | cat | head -n 4 | grep -i pipal | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rdpy && man rdpy | cat | head -n 4 | grep -i rdpy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Backdoors-----------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which netcat && man netcat | cat | head -n 4 | grep -i netcat | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ssh && man ssh  | cat | head -n 4 | grep -i ssh | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which vsftpd && man vsftpd | cat | head -n 4 | grep -i vsftpd | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which telnet && man telnet | cat | head -n 4 | grep -i telnet | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Remote Share Services-----------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which samba && man samba  | cat | head -n 4 | grep -i samba | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Database Systems----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis postgresql | grep -i / && man postgresql | cat | head -n 4 | grep -i postgre | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mysql && man mysql  | cat | head -n 4 | grep -i mysql | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Web Services--------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis wordpress | grep -i / && man wordpress| cat | head -n 4 | grep -i wordpress | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apache && man apache  | cat | head -n 4 | grep -i apache | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which www && man www  | cat | head -n 4 | grep -i www | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apache2 && man apache2  | cat | head -n 4 | grep -i apache2 | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nginx && man nginx  | cat | head -n 4 | grep -i nginx | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------Other Known Tools---------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xhydra && man xhydra | cat | head -n 4 | grep -i xhydra | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ettercap && man ettercap  | cat | head -n 4 | grep -i ettercap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zenmap && man zenmap  | cat | head -n 4 | grep -i zenmap | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tcpdump && man tcpdump  | cat | head -n 4 | grep -i tcpdump | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BackTrack  && man backtrack | cat | head -n 4 | grep -i back | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sysinternals && man sysinternals  | cat | head -n 4 | grep -i sys | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which scapy && man scapy | cat | head -n 4 | grep -i scapy | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nemisis && man nemisis | cat | head -n 4 | grep -i nemisis | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which setoolkit && man setoolkit  | cat | head -n 4 | grep -i set | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tor && man tor  | cat | head -n 4 | grep -i tor | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which torsocks && man torsocks | cat | head -n 4 | grep -i torsocks | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BeEF && man beef | cat | head -n 4 | grep -i beef | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "----------BackupScan----------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which acccheck | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ace-voip | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which amap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apt2 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arp-scan | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which automater | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bing-ip2hosts | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which braa | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which casefile | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cdpsarf | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cookie cadger | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which copy-router-config | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dmitry | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnmap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsenum | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsmap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnsrecon | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnstracer | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnswalk | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dotdotpwn | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which enum4linux | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which enumiax | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which eyewitness | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which faraday | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fierce | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which firewalk | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fragroute | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fragrouter | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ghost phisher | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which golismero | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which goofile | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hping3 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ident-user-enum | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inspy | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which intrace | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ismtp | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which lbd | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which masscan | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metagoofil | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which miranda | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nbtscan-unixwiz | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nikto | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nmap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ntop | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which osrframework | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which p0f | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which parsero | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which recon-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which set | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smbmap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smtp-user-enum | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which snmp-check | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sparta | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslcaudit | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslsplit | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslstrip | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aalyze | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sublist3r | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which theharvester | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tlssled | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which twofi | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which unicornscan | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which urlcrazy | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wireshark | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which WOL-E | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Xplico | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BBQSQL | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bed | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-global-exploiter | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-ocs | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which copy-router-config | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbpwaudit | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which doona | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dotdotpwn | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexorbase | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inguma | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jSQL injection | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which lynis | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nmap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ohrwurm | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which openvas | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Oscanner | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powerfuzzer | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sfuzz | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sidguesser | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which siparmyknife | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlninja | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlsus | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tnscmd10g | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which unix-privesc-check | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which armitage | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which backdoor factory | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which beef | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-global-exploiter | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-ocs | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-torch | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which commix | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crackle | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which exploitdb | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jboss-autopwn | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which linux exploit suggester | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metasploit framework | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which msfrpc | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which routersploit | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which set | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which shellnoob | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airbase-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aircrack-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airdecap-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airdecloak-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which aireplay-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airmon-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airodump-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airodump-ng-oui-update | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airolib-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airserv-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which airtun-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which asleap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which besside-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluelog | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluemaho | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluepot | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which blueranger | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bluesnarfer | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bully | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cowpatty | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crackle | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which eapmd5pass | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which easside-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fern wifi cracker | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which freeradius-wpe | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ghost phisher | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which giskismet | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gqrx | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gr-scan | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hostapd-wpe | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ivstools | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which kalibrate-rtl | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which killerBee | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which kismet | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which makeivs-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mdk3 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfcuk | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfoc | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mfterm | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which multimon-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which packetforge-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pixiewps | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pyrit | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which reaver | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which redfang | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which RTLSDR Scanner | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which spooftooph | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tkiptun-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wesside-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifi honey | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifiphisher | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wifitap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Wifite | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wpaclean | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which binwalk | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which bulk-extractor | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which capstone | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which chntpw | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cuckoo | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dc3dd | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ddrescue | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dff | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which diStorm3 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dumpzilla | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which extundelete | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which foremost | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which galleta | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which guymager | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iphone backup analyzer | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which p0f | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdf-parser | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdfid | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pdgmail | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which peepdf | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which regripper | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which volatility | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xplico | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apache-users | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arachni | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BBQSQL | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which blindelephant | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cutycapt | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which davTest | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which deblaze | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dirb | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dirbuster | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fimap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which funkload | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gobuster | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which grabber | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hurl | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jboss-autopwn | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which joomscan | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jSQL Injection | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nikto | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which padbuster | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which paros | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which parsero | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which plecost | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powerfuzzer | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which proxystrike | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which recon-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which skipfish | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlmap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlninja | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqlsus | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ua-tester | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which uniscan | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which vega | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which w3af | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Webscarab | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which Webshag | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webslayer | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which websploit | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wfuzz | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which whatweb | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wpscan | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xsser | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dhcpig | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which funkload | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iaxflood | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inundator | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inviteflood | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ipv6-toolkit | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mdk3 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which reaver | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpflood | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which slowhttptest | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which t50 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which termineter | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-SSL-DOS | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dnschef | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which fiked | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hamster-sidejack | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexinject | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which iaxflood | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which inviteflood | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ismtp | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which isr-evilgrade | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mitmproxy | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ohrwurm | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which protos-sip | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rebind | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which responder | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpbreak | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpinsertsound | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rtpmixsound | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sctpscan | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which siparmyKnife | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sipp | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sipvicious | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sniffjoke | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslsplit | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sslstrip | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-IPV6 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which voiphopper | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webscarab | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wifi honey | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wireshark | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xspy | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yersinia | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which acccheck | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which brutespray | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which burp suite | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cewl | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which chntpw | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cisco-auditing-tool | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cmospwd | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which creddump | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crowbar | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which crunch | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbpwaudit | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which findmyhash | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which gpp-decrypt | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hash-identifier | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hashcat | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hexorbase | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-Hydra | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which john | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which johnny | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which keimpx | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maltego teeth | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which maskprocessor | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which multiforcer | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ncrack | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which oclgausscrack | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ophcrack | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pack | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which patator | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which phrasendrescher | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which polenum | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rainbowcrack | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rcracki-mt | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rsmangler | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which seclists | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sqldict | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which statsprocessor | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which THC-pptp-bruter | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which truecrack | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webscarab | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which wordlists | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zaproxy | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cryptcat | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cymothoa | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dbd | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dns2tcp | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which http-tunnel | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which httptunnel | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which intersect | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nishang | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which polenum | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which powersploit | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pwnat | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ridenum | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sbd | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which shellter | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which U3-Pwn | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which webshells | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which weevely | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which winexe | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which android-sdk | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apktool | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which arduino | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dex2jar | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sakis3G | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smali | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apktool | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dex2jar | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which diStorm3 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which edb-debugger | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jad | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which javasnoop | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which jd-gui | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ollyD=dbg | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which smali | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which valgrind | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which yara | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which casefile | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cherrytree | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which cutycapt | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dos2unix | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which dradis | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which magictree | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which metagoofil | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nipper-ng | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which pipal | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which rdpy | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which netcat | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ssh | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which vsftpd | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which samba | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis postgresql | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which mysql | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
whereis wordpress | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apache | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which apache2 | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which www | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which xhydra | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which ettercap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which zenmap | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tcpdump | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BackTrack | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which sysinternals | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which scapy | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which nemisis | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which setoolkit | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which tor | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which torsocks | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which BeEF | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which telnet | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
which hydra | grep -i / | tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "------------------------------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/Exploit-Search.txt
echo "[SUCCESS] HTSA.sh was ran on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log