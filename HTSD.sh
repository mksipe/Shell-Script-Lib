#!/bin/sh
date=$(date -u)
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root. This instance will be logged."
    echo "[FAIL] $USER attempted to run the search on $date." | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
    exit
fi
echo "HTSA.sh started on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
touch /bin/lib/sh/MK3S/data/DPKG-Search.txt
chmod 755 /bin/lib/sh/MK3S/data/DPKG-Search.txt 
cat /dev/null > /bin/lib/sh/MK3S/data/DPKG-Search.txt
touch /bin/lib/sh/MK3S/data/DPKG-Search.txt
cat /dev/null > /bin/lib/sh/MK3S/data/DPKG-Search.txt

echo "----------Information Gathering-----------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l acccheck && man acccheck | cat | head -n 4 | grep -i acccheck | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ace-voip && man ace-voip | cat | head -n 4 | grep -i ace-voip | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l amap && man amap | cat | head -n 4 | grep -i amap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l apt2 && man apt2 | cat | head -n 4 | grep -i apt2 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l arp-scan && man arp-scan | cat | head -n 4 | grep -i arp-scan | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l automater && man automater | cat | head -n 4 | grep -i automater | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l bing-ip2hosts && man bing-ip2hosts | cat | head -n 4 | grep -i bing-ip2hosts | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l braa && man braa | cat | head -n 4 | grep -i braa | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l casefile && man casefile | cat | head -n 4 | grep -i casefile | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cdpsarf && man cdpsarf | cat | head -n 4 | grep -i cdpsarf | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cisco-torch && man cisco-torch | cat | head -n 4 | grep -i cisco-torch | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cookie cadger && man cookie cadger | cat | head -n 4 | grep -i cookie cadger | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l copy-router-config && man copy-router-config | cat | head -n 4 | grep -i copy-router-config | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dmitry && man dmitry | cat | head -n 4 | grep -i dmitry | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dnmap && man dnmap | cat | head -n 4 | grep -i dnmap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dnsenum && man dnsenum | cat | head -n 4 | grep -i dnsenum | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dnsmap && man dnsmap | cat | head -n 4 | grep -i dnsmap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dnsrecon && man dnsrecon | cat | head -n 4 | grep -i dnsrecon | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dnstracer && man dnstracer | cat| head -n 4 | grep -i dnstracer | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dnswalk && man dnswalk | cat | head -n 4 | grep -i dnswalk | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dotdotpwn && man dotdotpwn | cat | head -n 4 | grep -i dotdotpwn | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l enum4linux && man enum4linux | cat | head -n 4 | grep -i enum4linux | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l enumiax && man enumiax | cat | head -n 4 | grep -i enumiax | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l eyewitness && man eyewitness | cat | head -n 4 | grep -i eyewitness | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l faraday && man faraday | cat | head -n 4 | grep -i faraday | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l fierce && man fierce | cat | head -n 4 | grep -i fierce | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l firewalk && man firewalk | cat | head -n 4 | grep -i firewalk | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l fragroute && man fragroute | cat | head -n 4 | grep -i fragroute | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l fragrouter && man fragrouter | cat | head -n 4 | grep -i fragrouter | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ghost phisher && man ghost phisher | cat | head -n 4 | grep -i ghost phisher | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l golismero && man golismero | cat | head -n 4 | grep -i golismero | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l goofile && man goofile | cat | head -n 4 | grep -i goofile | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l hping3 && man hping3 | cat | head -n 4 | grep -i hping3 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ident-user-enum && man ident-user-enum | cat | head -n 4 | grep -i ident-user-enum | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l inspy && man inspy | cat | head -n 4 | grep -i inspy | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l intrace && man intrace | cat | head -n 4 | grep -i intrace | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ismtp && man ismtp | cat | head -4 | grep -i ismtp | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l lbd && man lbd | cat | head -n 4 | grep -i lbd | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l maltego teeth && man maltego teeth | cat | head -n 4 | grep -i maltego teeth | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l masscan && man masscan | cat | head -n 4 | grep -i masscan | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l metagoofil && man metagoofil | cat | head -n 4 | grep -i metagoofil | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l miranda && man miranda | cat | head -n 4 | grep -i miranda | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l nbtscan-unixwiz && man nbtscan-unixwiz | cat | head -n 4 | grep -i nbtscan-unixwiz | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l nikto && man nikto | cat | head -n 4 | grep -i nikto | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l nmap && man nmap | cat | head -n 4 | grep -i nmap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ntop && man ntop | cat | head -n 4 | grep -i ntop | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l osrframework && man osrframework | cat | head -n 4 | grep -i osrframework | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l p0f && man p0f | cat | head -n 4 | grep -i p0f | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l parsero && man parsero | cat | head -n 4 | grep -i parsero | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l recon-ng && man recon -ng | cat | head -n 4 | grep -i recon-ng | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l set && man setoolkit | cat | head -n 4 | grep -i set | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l smbmap && man smbmap | cat | head -n 4 | grep -i smbmap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l smtp-user-enum && man smtp-user-enum | cat | head -n 4 | grep -i smtp-user-enum | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l snmp-check && man snmp-check | cat | head -n 4 | grep -i snmp-check | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sparta && man sparta | cat | head -n 4 | grep -i sparta | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sslcaudit && man sslcaudit | cat | head -n 4 | grep -i sslcaudit | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sslsplit && man sslsplit | cat | head -n 4 | grep -i sslsplit | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sslstrip && man sslstrip | cat | head -n 4 | grep -i sslstrip | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l aalyze && man aalyze | cat | head -n 4 | grep -i aalyze | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sublist3r && man sublist3r | cat | head -n 4 | grep -i sublist3r | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep -i THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l theharvester && man theharvester | cat | head -n 4 | grep -i theharvester | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l tlssled && man tlssled | cat | head -n 4  | grep -i tlssled | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l twofi && man twofi | cat | head -n 4 | grep -i twofi | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l unicornscan && man unicornscan | cat | head -n 4 | grep -i unicornscan | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l urlcrazy && man urlcrazy | cat | head -n 4 | grep -i urlcrazy | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l wireshark && man wireshark | cat | head -n 4 | grep -i wireshark | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l WOL-E && man WOL-E | cat | head -n 4 | grep -i WOL-E | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l Xplico && man Xplico | cat | head -n 4 | grep -i Xplico | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Vulnerability Analysis----------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l BBQSQL && man BBQSQL | cat | head -n 4 | grep -i BBQSQL | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l bed && man bed | cat | head -n 4 | grep -i bed | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cisco-auditing-tool && man cisco-auditing-tool | cat | head -n 4 | grep -i cisco-auditing-tool | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cisco-global-exploiter && man cisco-global-exploiter | cat | head -n 4 | grep -i cisco-global-exploiter | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cisco-ocs && man cisco-ocs | cat | head -n 4 | grep -i cisco-ocs | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cisco-torch && man cisco-torch | cat | head -n 4 | grep -i cisco-torch | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l copy-router-config && man copy-router-config | cat | head -n 4 | grep -i copy-router-config | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dbpwaudit && man dbpwaudit | cat | head -n 4 | grep -i dbpwaudit | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l doona && man doona | cat | head -n 4 | grep -i doona | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dotdotpwn && man dotdotpwn | cat | head -n 4 | grep -i dotdotpwn | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l hexorbase && man hexorbase | cat | head -n 4 | grep -i hexorbase | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l inguma && man inguma | cat | head -n 4 | grep -i inguma | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l jSQL injection && man jSQL injection | cat | head -n 4 | grep -i jSQL | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l lynis && man lynis | cat | head -n 4 | grep -i lynis | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l nmap && man nmap | cat | head -n 4 | grep -i nmap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ohrwurm && man ohrwurm | cat | head -n 4 | grep -i ohrwurm | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l openvas && man openvas | cat | head -n 4 | grep -i openvas | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l Oscanner && man Oscanner | cat | head -n 4 | grep -i Oscanner | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l powerfuzzer && man powerfuzzer | cat | head -n 4 | grep -i powerfuzzer | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sfuzz && man sfuzz | cat | head -n 4 | grep -i sfuzz | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sidguesser && man sidguesser | cat | head -n 4 | grep -i sidguesser | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l siparmyknife && man siparmyKnife | cat | head -n 4 | grep -i siparmyknife | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sqlmap && man sqlmap | cat | head -n 4 | grep -i sqlmap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sqlninja && man sqlninja | cat | head -n 4 | grep -i sqlninja | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sqlsus && man sqlsus | cat | head -n 4 | grep -i sqlsus | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep -i THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l tnscmd10g && man tnscmd10g | cat | head -n 4 | grep -i tnscmd10g | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l unix-privesc-check && man unix-privesc-check | cat | head -n 4 | grep -i unix-privesc-check | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l yersinia && man yersinia | cat | head -n 4 | grep -i yersinia | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Exploitation Tools--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l armitage && man armitage | cat | head -n 4 | grep -i armitage | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l backdoor factory && man backdoor factory | cat | head -n 4 | grep -i backdoor | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l beef && man beef | cat | head -n 4 | grep -i beef | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cisco-auditing-tool && man cisco-auditing-tool | cat | head -n 4 | grep -i cisco-auditing-tool | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cisco-global-exploiter && man cisco-global-exploiter | cat | head -n 4 | grep -i cisco-global-exploiter | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cisco-ocs && man cisco-ocs | cat | head -n 4 | grep -i cisco-ocs | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cisco-torch && man cisco-torch | cat | head -n 4 | grep -i cisco-torch | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l commix && man commix | cat | head -n 4 | grep -i commix | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l crackle && man crackle | cat | head -n 4 | grep -i crackle | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l exploitdb && man exploitdb | cat | head -n 4 | grep -i exploitdb | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l jboss-autopwn && man jboss-autopwn | cat | head -n 4 | grep -i jboss | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l linux exploit suggester && man linux exploit suggester | cat | head -n 4 | grep -i linux | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l maltego teeth && man maltego teeth | cat | head -n 4 | grep -i maltego teeth | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l metasploit framework && man metasploit-framework | cat | head -n 4 | grep -i metasploit  | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l msfrpc && man msfrpc | cat | head -n 4 | grep -i msfrpc | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l routersploit && man routersploit | cat | head -n 4 | grep -i routersploit | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l set && man setoolkit | cat | head -n 4 | grep -i set | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l shellnoob && man shellnoob | cat | head -n 4 | grep -i shellnoob | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sqlmap && man sqlmap | cat | head -n 4 | grep -i sqlmap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep -i THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l yersinia && man yersinia | cat | head -n 4 | grep -i yersinia | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Wireless Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l airbase-ng && man airbase-ng | cat | head -n 4 | grep -i airbase | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l aircrack-ng && man aircrack-ng | cat | head -n 4 | grep -i aircrack | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l airdecap-ng && man airdecap-ng | cat | head -n 4 | grep -i airdecap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l airdecloak-ng && man airdecloak-ng | cat | head -n 4 | grep -i airdecloak | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l aireplay-ng && man aireplay-ng | cat | head -n 4 | grep -i aireplay | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l airmon-ng && man airmon-ng | cat | head -n 4 | grep -i airmon | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l airodump-ng && man airodump-ng | cat | head -n 4 | grep -i airodump | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l airodump-ng-oui-update && man airodump-ng-oui-update | cat | head -n 4 | grep -i airodump-ng=oui-update | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l airolib-ng && man airolib-ng | cat | head -n 4 | grep -i airolib | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l airserv-ng && man airserv-ng | cat | head -n 4 | grep -i airserv | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l airtun-ng && man airtun-ng | cat | head -n 4 | grep -i airtun | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l asleap && man asleap | cat | head -n 4 | grep -i asleap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l besside-ng && man besside-ng | cat | head -n 4 | grep -i besside | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l bluelog && man bluelog | cat | head -n 4 | grep -i bluelog | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l bluemaho && man bluemaho | cat | head -n 4 | grep -i bluemaho | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l bluepot && man bluepot | cat | head -n 4 | grep -i bluepot | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l blueranger && man blueranger | cat | head -n 4 | grep -i blueranger | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l bluesnarfer && man bluesnarfer | cat | head -n 4 | grep -i bluesnarfer | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l bully && man bully | cat | head -n 4 | grep -i bully | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cowpatty && man cowpatty | cat | head -n 4 | grep -i cowpatty | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l crackle && man crackle | cat | head -n 4 | grep -i crackle | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l eapmd5pass && man eapmd5pass | cat | head -n 4 | grep -i eapmd5pass | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l easside-ng && man easside-ng | cat | head -n 4 | grep -i easside | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l fern wifi cracker && man fern wifi cracker | cat | head -n 4 | grep -i fern wifi cracker | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l freeradius-wpe && man freeradius-wpe | cat | head -n 4 | grep -i freeradius | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ghost phisher && man ghost phisher | cat | head -n 4 | grep -i ghost phisher | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l giskismet && man giskismet | cat | head -n 4 | grep -i giskismet | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l gqrx && man gqrx | cat | head -n 4 | grep -i gqrx | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l gr-scan && man gr-scan | cat | head -n 4 | grep -i gr-scan | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l hostapd-wpe && man hostapd-wpe | cat | head -n 4 | grep -i hostapd | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ivstools && man ivstools | cat | head -n 4 | grep -i ivstools | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l kalibrate-rtl && man kalibrate-rtl | cat | head -n 4 | grep -i / | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l killerBee && man killerbee | cat | head -n 4 | grep -i killerBee | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l kismet && man kismet | cat | head -n 4 | grep -i kismet | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l makeivs-ng && man makeivs-ng | cat | head -n 4| grep -i makeivs | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l mdk3 && man mdk3 | cat | head -n 4 | grep -i mdk3 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l mfcuk && man mfcuk | cat | head -n 4| grep -i mfcuk | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l mfoc && man mfoc | cat | head -n 4 | grep -i mfoc | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l mfterm && man mfterm | cat | head -n 4 | grep -i mfterm | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l multimon-ng && man multimon-ng | cat | head -n 4 | grep -i multimon | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l packetforge-ng && man packetforge-ng | cat | head -n 4 | grep -i packetforge | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l pixiewps && man pixiewps | cat | head -n 4 | grep -i pixiewps | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l pyrit && man pyrit | cat | head -n 4 | grep -i pyrit | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l reaver && man reaver  | cat | head -n 4 | grep -i reaver | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l redfang && man redfang  | cat | head -n 4 | grep -i redfang | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l RTLSDR Scanner && man RTLSDR Scanner  | cat | head -n 4 | grep -i Scanner | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l spooftooph && man spooftooph | cat | head -n 4 | grep -i spooftooph | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l tkiptun-ng && man tkiptun | cat | head -n 4 | grep -i tkiptun | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l wesside-ng && man wesside-ng  | cat | head -n 4 | grep -i wesside | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l wifi honey && wifi honey  | cat | head -n 4 | grep -i wifi | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l wifiphisher && man wifiphisher | cat | head -n 4 | grep -i wifiphisher | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l Wifitap && man wifitap  | cat | head -n 4 | grep -i wifitap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l Wifite && man wifite  | cat | head -n 4 | grep -i wifite | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l wpaclean && man wpaclean  | cat | head -n 4 | grep -i wpaclean | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Forensics Tools-----------------|"  | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l binwalk && man binwalk  | cat | head -n 4 | grep -i binwalk | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l bulk-extractor && man bulk-extractor  | cat | head -n 4 | grep -i bulk | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l capstone && man capstone  | cat | head -n 4 | grep -i capstone | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l chntpw && man chntpw  | cat | head -n 4 | grep -i chntpw | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cuckoo && man cuckoo  | cat | head -n 4 | grep -i cuckoo | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dc3dd && man dc3dd  | cat | head -n 4 | grep -i dc3dd | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ddrescue && man ddrescue | cat | head -n 4 | grep -i ddrescue | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dff && man dff | cat | head -n 4 | grep -i dff | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l diStorm3 && man diStorm3 | cat | head -n 4 | grep -i diStorm3 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dumpzilla && man dumpzilla | cat | head -n 4 | grep -i dumpzilla | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l extundelete && man extundelete | cat | head -n 4 | grep -i extundelete | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l foremost && man foremost | cat | head -n 4 | grep -i foremost | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l galleta && man galleta | cat | head -n 4 | grep -i galleta | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l guymager && man guymager | cat | head -n 4 | grep -i guymager | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l iphone backup analyzer && man iphone backup analyzer | cat | head -n 4 | grep -i iphone | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l p0f && man p0f | cat | head -n 4 | grep -i p0f | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l pdf-parser && man pdf-parser | cat | head -n 4 | grep -i pdf | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l pdfid && man pdfid | cat | head -n 4 | grep -i pdfid | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l pdgmail && man pdgmail | cat | head -n 4 | grep -i pdgmail | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l peepdf && man peepdf | cat | head -n 4 | grep -i peepdf | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l regripper && man regripper | cat | head -n 4 | grep -i regripper | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l volatility | grep -i / | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l xplico && man Xplico | cat | head -n 4 | grep -i Xplico | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Web Applications----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l apache-users && man apache-users | cat | head -n 4 | grep -i apace | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l arachni && man arachni | cat | head -n 4 | grep -i arachni | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l BBQSQL && man BBQSQL | cat | head -n 4 | grep -i BBQSQL | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l blindelephant && man blindelephant | cat | head -n 4 | grep -i blindelephant | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l burp suite && man burpsuite | cat | head -n 4 | grep -i burp | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cutycapt && man cutycapt | cat | head -n 4 | grep -i cutycapt | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l davTest && man davTest | cat | head -n 4 | grep -i davTest | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l deblaze && man deblaze | cat | head -n 4 | grep -i deblaze | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dirb && man dirb | cat | head -n 4 | grep -i dirb | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dirbuster && man dirbuster | cat | head -n 4 | grep -i dirbuster | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l fimap && man fimap | cat | head -n 4 | grep -i fimap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l funkload && man funkload | cat | head -n 4 | grep -i funkload | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l gobuster && man gobuster | cat | head -n 4 | grep -i gobuster | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l grabber && man grabber | cat | head -n 4 | grep -i grabber | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l hurl && hurl | cat | head -n 4 | grep -i hurl | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l jboss-autopwn && man jboss-autopwn | cat | head -n 4 | grep -i jboss | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l joomscan && man joomscan | cat | head -n 4 | grep -i joomscan | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l jSQL Injection && man jSQL injection | cat | head -n 4 | grep -i jSQL | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l maltego teeth && man maltego teeth | cat | head -n 4 | grep -i maltego teeth | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l nikto && man nikto | cat | head -n 4 | grep -i nikto | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l padbuster && man padbuster | cat | head -n 4 | grep -i padbuster | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l paros && man paros | cat | head -n 4 | grep -i paros | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l parsero && man parsero | cat | head -n 4 | grep -i parsero | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l plecost && man plecost | cat | head -n 4 | grep -i plecost | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l powerfuzzer && man powerfuzzer | cat | head -n 4 | grep -i powerfuzzer | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l proxystrike && man proxystrike | cat | head -n 4 | grep -i proxystrike | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l recon-ng && man recon -ng | cat | head -n 4 | grep -i recon-ng | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l skipfish && man skipfish | cat | head -n 4 | grep -i skipfish | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sqlmap && man sqlmap | cat | head -n 4 | grep -i sqlmap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sqlninja && man sqlninja | cat | head -n 4 | grep -i sqlninja | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sqlsus && man sqlsus | cat | head -n 4 | grep -i sqlsus | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ua-tester && man ua-tester | cat | head -n 4 | grep -i ua-tester | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l uniscan && man uniscan | cat | head -n 4 | grep -i uniscan | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l vega && man vega | cat | head -n 4 | grep -i vega | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l w3af && man w3af | cat | head -n 4 | grep -i w3af | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l Webscarab && man webscarab | cat | head -n 4 | grep -i webscarab | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l Webshag && man Webshag | cat | head -n 4  | grep -i webshag | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l webslayer && man webslayer | cat | head -n 4  | grep -i webslayer | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l websploit && man websploit | cat | head -n 4  | grep -i websploit | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l wfuzz && man wfuzz | cat | head -n 4 | grep -i wfuzz | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l whatweb && man whatweb | cat | head -n 4 | grep -i whatweb | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l wpscan && man wpscan | cat | head -n 4 | grep -i wpscan | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l xsser && man xsser | cat | head -n 4 | grep -i xsser | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l zaproxy && man zaproxy | cat | head -n 4 | grep -i zaproxy | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Stress Testing------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dhcpig && man dhcpig | cat | head -n 4 | grep -i dhcpig | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l funkload && man funkload | cat | head -n 4 | grep -i funkload | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l iaxflood && man iaxflood | cat | head -n 4 | grep -i iaxflood | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l inundator && man inundator | cat | head -n 4 | grep -i inundator | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l inviteflood && man inviteflood | cat | head -n 4 | grep -i inviteflood | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ipv6-toolkit && man ipv6-toolkit | cat | head -n 4 | grep -i ipv6-toolkit | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l mdk3 && man mdk3 | cat | head -n 4 | grep -i mdk3 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l reaver && man reaver  | cat | head -n 4 | grep -i reaver | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l rtpflood && man rtpflood | cat | head -n 4 | grep -i rtpflood | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l slowhttptest && man slowhttptest | cat | head -n 4 | grep -i slowhttptest | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l t50 && man t50  | cat | head -n 4 | grep -i t50 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l termineter && man termineter | cat | head -n 4 | grep -i termineter | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep -i THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l THC-SSL-DOS && man THC-SSL-DOS | cat | head -n 4 | grep -i THC | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Sniffing & Spoofing-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l burp suite && man burpsuite | cat | head -n 4 | grep -i burp | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dnschef && man dnschef | cat | head -n 4 | grep -i dnschef | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l fiked && man fiked | cat | head -n 4 | grep -i fiked | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l hamster-sidejack && man hamster-sidejack | cat | head -n 4 | grep -i hamster | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l hexinject && man hexinject | cat | head -n 4 | grep -i hexinject | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l iaxflood && man iaxflood | cat | head -n 4 | grep -i iaxflood | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l inviteflood && man inviteflood | cat | head -n 4 | grep -i inviteflood | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ismtp && man ismtp | cat | head -4 | grep -i ismtp | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l isr-evilgrade && man isr-evilgrade | cat | head -n 4 | grep -i evil | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l mitmproxy && man mitmproxy | cat | head -n 4 | grep -i mitmproxy | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ohrwurm && man ohrwurm | cat | head -n 4 | grep -i ohrwurm | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l protos-sip && man protos-sip | cat | head -n 4 | grep -i protos | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l rebind && man rebind | cat | head -n 4 | grep -i rebind | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l responder && man responder | cat | head -n 4 | grep -i responder | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l rtpbreak && man rtpbreak | cat | head -n 4 | grep -i rtpbreak | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l rtpinsertsound && man rtpinsertsound | cat | head -n 4 | grep -i rtpinsertsound | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l rtpmixsound && man rtpmixsound | cat | head -n 4 | grep -i rtpmixsound | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sctpscan | grep -i / | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l siparmyKnife && man siparmyKnife | cat | head -n 4 | grep -i siparmyknife | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sipp && man sipp | cat | head -n 4 | grep -i sipp | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sipvicious && man sipvicious | cat | head -n 4 | grep -i sipvicious | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sniffjoke && man sniffjoke | cat | head -n 4 | grep -i sniffjoke | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sslsplit && man sslsplit | cat | head -n 4 | grep -i sslsplit | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sslstrip && man sslstrip | cat | head -n 4 | grep -i sslstrip | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l THC-IPV6 && man THC-IPV6 | cat | head -n 4 | grep -i THC-IPV6 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l voiphopper && man voiphopper | cat | head -n 4 | grep -i voiphopper | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l webscarab && man webscarab | cat | head -n 4 | grep -i webscarab | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l wifi honey && wifi honey  | cat | head -n 4 | grep -i wifi | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l wireshark && man wireshark | cat | head -n 4 | grep -i wireshark | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l xspy && man xspy | cat | head -n 4 | grep -i xspy | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l yersinia && man yersinia | cat | head -n 4 | grep -i yersinia | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l zaproxy && man zaproxy | cat | head -n 4 | grep -i zaproxy | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Password Attacks----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l acccheck && man acccheck | cat | head -n 4 | grep -i acccheck | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l brutespray && man brutespray | cat | head -n 4 | grep -i brutespray | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l burp suite && man burpsuite | cat | head -n 4 | grep -i burp | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cewl && man cewl | cat | head -n 4 | grep -i cewl | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l chntpw && man chntpw  | cat | head -n 4 | grep -i chntpw | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cisco-auditing-tool && man cisco-auditing-tool | cat | head -n 4 | grep -i cisco-auditing-tool | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cmospwd && man cmospwd | cat | head -n 4 | grep -i cmospwd | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l creddump && man creddump | cat | head -n 4 | grep -i creddump | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l crowbar && man crowbar | cat | head -n 4 | grep -i crowbar | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l crunch && man crunch | cat | head -n 4 | grep -i crunch | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dbpwaudit && man dbpwaudit | cat | head -n 4 | grep -i dbpwaudit | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l findmyhash && man findmyhash | cat | head -n 4  grep -i findmuhash | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l gpp-decrypt && man gpp-decrypt | cat | head -n 4 | grep -i gpp-decrypt | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l hash-identifier && man hash-identifier | cat | head -n 4 | grep -i hash-identifier | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l hashcat && man hashcat | cat | head -n 4 | grep -i hashcat | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l hexorbase && man hexorbase | cat | head -n 4 | grep -i hexorbase | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l hydra && man hydra | cat | head -n 4 | grep -i hydra | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l john && man john| cat | head -n 4 | grep -i john | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l johnny && man johnny | cat | head -n 4 | grep -i johnny | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l keimpx && man keimpx | cat | head -n 4 | grep -i keimpx | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l maltego teeth && man maltego teeth | cat | head -n 4 | grep -i maltego teeth | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l maskprocessor && man maskprocessor | cat | head -n 4 | grep -i maskprocessor | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l multiforcer && man multiforcer | cat | head -n 4 | grep -i multiforcer | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ncrack && man ncrack | cat | head -n 4 | grep -i ncrack | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l oclgausscrack && man oclgausscrack | cat | head -n 4 | grep -i oclgausscrack | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ophcrack && man ophcrack | cat | head -n 4 | grep -i Ophcrack | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l pack && man pack | cat | head -n 4 | grep -i pack | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l patator && man patator | cat | head -n 4 | grep -i patator | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l phrasendrescher && man phrasendrescher | cat | head -n 4 | grep -i phrasendrescher | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l polenum && man polenum | cat | head -n 4 | grep -i polenum | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l rainbowcrack && man rainbowcrack | cat | head -n 4 | grep -i rainbowcrack | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l rcracki-mt && man rcracki-mt | cat | head -n 4 | grep -i rcracki | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l rsmangler && man rsmangler | cat | head -n 4 | grep -i rsmangler | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l seclists && man seclists | cat | head -n 4 | grep -i seclists | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sqldict && man sqldict | cat | head -n 4 | grep -i sqldict | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l statsprocessor && man statsprocessor | cat | head -n 4 | grep -i statsprocessor | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l THC-pptp-bruter && man THC-pptp-bruter | cat | head -n 4 | grep -i THC | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l truecrack && man truecrack | cat | head -n 4 | grep -i / | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l webscarab && man webscarab | cat | head -n 4 | grep -i webscarab | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l wordlists && man wordlists | cat | head -n 4 | grep -i / | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l zaproxy && man zaproxy | cat | head -n 4 | grep -i zaproxy | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Maintaining Access--------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cryptcat && man cryptcat | cat | head -n 4 | grep -i cryptcat | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cymothoa && man cymothoa | cat | head -n 4 | grep -i cymotha | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dbd && man dbd | cat | head -n 4  | grep -i dbd | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dns2tcp && man dns2tcp | cat | head -n 4 | grep -i dns2tcp | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l http-tunnel && man http-tunnel | cat | head -n 4 | grep -i http | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l httptunnel && man httptunnel | cat | head -n 4 | grep -i httptunnel | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l intersect && man intersect | cat | head -n 4 | grep -i intersect | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l nishang && man nishang | cat | head -n 4 | grep -i nishang | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l polenum && man polenum | cat | head -n 4 | grep -i polenum | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l powersploit && man powersploit | cat | head -n 4 | grep -i powersploit | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l pwnat && man pwnat | cat | head -n 4 | grep -i pwnat | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ridenum && man ridenum | cat | head -n 4 | grep -i ridenum | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sbd && man sbd | cat | head -n 4 | grep -i sbd | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l shellter && man shellter | cat | head -n 4 | grep -i shellter | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l U3-Pwn && man U3-Pwn | cat | head -n 4 | grep -i U3-Pwn | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l webshells && man webshells | cat | head -n 4 | grep -i webshells | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l weevely && man weevely | cat | head -n 4 | grep -i weevely | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l winexe && man winexe | cat | head -n 4 | grep -i winexe | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Hardware Hacking----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l android-sdk && man android-sdk | cat | head -n 4 | grep -i android | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l apktool && man apktool | cat | head -n 4 | grep -i apktool | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l arduino && man arduino | cat | head -n 4 | grep -i arduino | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dex2jar && man dex2jar | cat | head -n 4 | grep -i dex2jar | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sakis3G && man sakis3G | cat | head -n 4 | grep -i sakis3G | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l smali && man smali | cat | head -n 4 | grep -i smali | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Reverse Engineering-------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l apktool && man apktool | cat | head -n 4 | grep -i apktool | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dex2jar && man dex2jar | cat | head -n 4 | grep -i dex2jar | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l diStorm3 && man diStorm3 | cat | head -n 4 | grep -i diStorm3 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l edb-debugger && man edb-debugger | cat | head -n 4 | grep -i edb-debugger | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l jad && man jad | cat | head -n 4 | grep -i jad | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l javasnoop && man javasnoop | cat | head -n 4 | grep -i javasnoop | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l jd-gui && man jd-gui | cat | head -n 4 | grep -i jd | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ollyD=dbg && man ollyD=dbg | cat | head -n 4 | grep -i olly | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l smali && man smali | cat | head -n 4 | grep -i smali | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l valgrind && man valgrind | cat | head -n 4 | grep -i valgrind | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l yara && man yara | cat | head -n 4 | grep -i yara | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Reporting Tools-----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l casefile && man casefile | cat | head -n 4 | grep -i casefile | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cherrytree && man cherrytree | cat | head -n 4 | grep -i cherrytree | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l cutycapt && man cutycapt | cat | head -n 4 | grep -i cutycapt | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dos2unix && man dos2unix | cat | head -n 4 | grep -i dos2unix | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l dradis && man dradis | cat | head -n 4 | grep -i dradis | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l magictree && man magictree | cat | head -n 4 | grep -i magictree | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l metagoofil && man metagoofil | cat | head -n 4 | grep -i metagoofil | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l nipper-ng && man nipper-ng | cat | head -n 4 | grep -i nipper | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l pipal && man pipal | cat | head -n 4 | grep -i pipal | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l rdpy && man rdpy | cat | head -n 4 | grep -i rdpy | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Backdoors-----------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l netcat && man netcat | cat | head -n 4 | grep -i netcat | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ssh && man ssh  | cat | head -n 4 | grep -i ssh | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l vsftpd && man vsftpd | cat | head -n 4 | grep -i vsftpd | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l telnet && man telnet | cat | head -n 4 | grep -i telnet | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Remote Share Services-----------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l samba && man samba  | cat | head -n 4 | grep -i samba | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Database Systems----------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l postgresql | grep -i / && man postgresql | cat | head -n 4 | grep -i postgre | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l mysql && man mysql  | cat | head -n 4 | grep -i mysql | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Web Services--------------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l wordpress | grep -i / && man wordpress| cat | head -n 4 | grep -i wordpress | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l apache && man apache  | cat | head -n 4 | grep -i apache | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l www && man www  | cat | head -n 4 | grep -i www | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l apache2 && man apache2  | cat | head -n 4 | grep -i apache2 | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
echo "----------Other Known Tools---------------|" | sudo tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l xhydra && man xhydra | cat | head -n 4 | grep -i xhydra | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l ettercap && man ettercap  | cat | head -n 4 | grep -i ettercap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l zenmap && man zenmap  | cat | head -n 4 | grep -i zenmap | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l tcpdump && man tcpdump  | cat | head -n 4 | grep -i tcpdump | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l BackTrack  && man backtrack | cat | head -n 4 | grep -i back | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l sysinternals && man sysinternals  | cat | head -n 4 | grep -i sys | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l scapy && man scapy | cat | head -n 4 | grep -i scapy | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l nemisis && man nemisis | cat | head -n 4 | grep -i nemisis | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l setoolkit && man setoolkit  | cat | head -n 4 | grep -i set | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l tor && man tor  | cat | head -n 4 | grep -i tor | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l torsocks && man torsocks | cat | head -n 4 | grep -i torsocks | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt
dpkg -l BeEF && man beef | cat | head -n 4 | grep -i beef | tee -a /bin/lib/sh/MK3S/data/DPKG-Search.txt