#!/bin/sh



echo "Searching for Hacking tools"

sudo touch Possible\ Exploits.txt
sudo chmod 755 Possible\ Exploits.txt
touch exploits-history.txt
chmod 755 exploits-history.txt
cat Possible\ Exploits.txt >> exploits-history.txt
cat /dev/null > Possible\ Exploits.txt

date=$(date -u)
jtr=$(which John)
jnny=$(which johnny)
XHDA=$(which xhydra)
ARM=$(which armitage)
MSF=$(which metasploit)
nmp=$(which nmap)
zmp=$(which zenmap)
wshk=$(which wireshark)
nssus=$(which nessus)
acrk=$(which aircrack)
acrkng=$(which aircrack-ng)
snt=$(which snort)
CAB=$(which Cain and Abel)
BT=$(which BackTrack)
nc=$(which netcat)
tcpd=$(which tcpdump)
ksmt=$(which kismet)
nkto=$(which nikto)
bsuit=$(which Burpsuite)
hpng=$(which hping)
ecap=$(which ettercap)
sysints=$(which sysinternals)
w3af=$(which w3af)
scpy=$(which scpy)
hyda=$(which hydra)
pros=$(which paros)
oc=$(which ophcrack)
rc=$(which rainbowcrack)
msf=$(which metasploit-framework)
tlnt=$(which telnet)
ovas=$(which openvas)
oVAS=$(which openVAS)
nstmblr=$(which netstumbler)
nStmblr=$(which netStumbler)
amp=$(which Amap)
Amp=$(which amap)
sfh=$(which skipfish)
Sfh=$(which SkipFish)
Wpiti=$(which Wapiti)
wpiti=$(which wapiti)
Wfzz=$(which wfuzz)
nmsis=$(which nemisis)
Nmsis=$(which Nemisis)
Ysna=$(which Yersinia)
ysna=$(which yersinia)
Dnsf=$(which Dsniff)
dsnf=$(which dsniff)
EA=$(which EtherApe)
ea=$(which etherape)
isdr=$(which inssider)
ksmc=$(which kismac)
NM=$(which networkminer)
ngp=$(which ngrep)
ntp=$(which ntop)
pof=$(which p0f)
bts=$(which brutus)
fgd=$(which fgdump)
l0ck=$(which l0phtcrack)
mdsa=$(which medusa)
SW=$(which solarwinds)
SS=$(which superscan)
pvssh=$(which ssh)
pvwww=$(which www)
pvsamba=$(which samba)
pvvsftpd=$(which vsftpd)
pvftp=$(which ftp)
pvtcp=$(which tcp)
pvphp=$(which php)
pvsmtp=$(which smtp)
pvhttp=$(which http)
pvhttps=$(which https)
djohn=$(sudo dpkg -l | grep john)
djohnny=$(sudo dpkg -l | grep johnny)
dxhydra=$(sudo dpkg -l | grep xhydra)
darmitage=$(sudo dpkg -l | grep armitage)
dmetasploit=$(sudo dpkg -l | grep metasploit)
dnmap=$(sudo dpkg -l | grep nmap)
dzenmap=$(sudo dpkg -l | grep zenmap)
dwireshark=$(sudo dpkg -l | grep wireshark)
dnessus=$(sudo dpkg -l | grep nessus)
daircrack=$(sudo dpkg -l | grep aircrack-ng)
daircrackng=$(sudo dpkg -l | grep aircrack)
dcain=$(sudo dpkg -l | grep Cain)
dbacktrack=$(sudo dpkg -l | grep BackTrack)
dnetcat=$(sudo dpkg -l | grep netcat)
dtcpdump=$(sudo dpkg -l | grep tcpdump)
dkismet=$(sudo dpkg -l | grep kismet)
dnikto=$(sudo dpkg -l | grep nikto)
dburpsuite=$(sudo dpkg -l | grep burpsuite)
dhping=$(sudo dpkg -l | grep hping)
dettercap=$(sudo dpkg -l | grep ettercap)
dsysinternals=$(sudo dpkg -l | grep sysinternals)
dw3af=$(sudo dpkg -l | grep w3af)
dhydra=$(sudo dpkg -l | grep hydra)
dparos=$(sudo dpkg -l | grep paros )
dophcrack=$(sudo dpkg -l | grep ophcrack)
drainbowcrack=$(sudo dpkg -l | grep rainbowcrack)
dmetasploitframework=$(sudo dpkg -l | grep metasploit-framework)
dtelnet=$(sudo dpkg -l | grep telnet)
dopenvas=$(sudo dpkg -l | grep openvas)
dopenVAS=$(sudo dpkg -l | grep openVAS)
dnetStumbler=$(sudo dpkg -l | grep netStumbler)
dnetstumbler=$(sudo dpkg -l | grep netstumbler)
damap=$(sudo dpkg -l | grep amap)
dAmap=$(sudo dpkg -l | grep Amap)
dskipfish=$(sudo dpkg -l | grep skipfish)
dSkipFish=$(sudo dpkg -l | grep SkipFish)
dWapiti=$(sudo dpkg -l | grep Wapiti)
dwapiti=$(sudo dpkg -l | grep wapiti)
dWfuzz=$(sudo dpkg -l | grep Wfuzz)
dwfuzz=$(sudo dpkg -l | grep wfuzz)
dNemisis=$(sudo dpkg -l | grep Nemisis)
dnemisis=$(sudo dpkg -l | grep nemisis)
dyersinia=$(sudo dpkg -l | grep yersinia )
ddsniff=$(sudo dpkg -l | grep dsniff)
dDsniff=$(sudo dpkg -l | grep Dsniff)
dEtherApe=$(sudo dpkg -l | grep EtherApe)
dethrape=$(sudo dpkg -l | grep etherape)
dinSSIDer=$(sudo dpkg -l | grep inSSIDer)
dssider=$(sudo dpkg -l | grep inssider)
dKismac=$(sudo dpkg -l | grep KisMAC)
dKisMac=$(sudo dpkg -l | grep KisMac)
dKismca=$(sudo dpkg -l | grep Kismac)
dNetworkMiner=$(sudo dpkg -l | grep NetworkMiner)
dnetworkminer=$(sudo dpkg -l | grep networkminer)
dNgrep=$(sudo dpkg -l | grep Ngrep)
dngrep=$(sudo dpkg -l | grep ngrep)
dNtop=$(sudo dpkg -l | grep Ntop )
dntop=$(sudo dpkg -l | grep ntop)
dP0f=$(sudo dpkg -l | grep P0f)
dp0f=$(sudo dpkg -l | grep p0f)
dBrutus=$(sudo dpkg -l | grep Brutus)
dbrutus=$(sudo dpkg -l | grep brutus)
dFgdump=$(sudo dpkg -l | grep Fgdump)
dfgdump=$(sudo dpkg -l | grep fgdump)
dL0phtCrack=$(sudo dpkg -l | grep L0phtCrack) 
dl0phtcrack=$(sudo dpkg -l | grep l0phtcrack)
dMedusa=$(sudo dpkg -l | grep Medusa )
dmedusa=$(sudo dpkg -l | grep medusa )
dSolarWinds=$(sudo dpkg -l | grep SolarWinds)
dsolarwinds=$(sudo dpkg -l | grep solarwinds)
dSuperScan=$(sudo dpkg -l | grep SuperScan)
dSuperscan=$(sudo dpkg -l | grep Superscan)
dsuperscan=$(sudo dpkg -l | grep superscan)



echo "POSSIBLE_EXPLOITS most recent check was on $date" >> Possible\ Exploits.txt
echo ----------Possible Pen-tools---------- >> Possible\ Exploits.txt
echo "$jtr" >> Possible\ Exploits.txt 
echo "$jnny" >> Possible\ Exploits.txt
echo "$XHDA" >> Possible\ Exploits.txt
echo "$ARM" >> Possible\ Exploits.txt
echo "$MSF" >> Possible\ Exploits.txt
echo "$nmp" >> Possible\ Exploits.txt
echo "$zmp" >> Possible\ Exploits.txt
echo "$wshk" >> Possible\ Exploits.txt
echo "$nssus" >> Possible\ Exploits.txt
echo "$acrk" >> Possible\ Exploits.txt
echo "$acrkng" >> Possible\ Exploits.txt
echo "$snt" >> Possible\ Exploits.txt
echo "$CAB" >> Possible\ Exploits.txt
echo "$BT" >> Possible\ Exploits.txt
echo "$nc" >> Possible\ Exploits.txt
echo "$tcpd" >> Possible\ Exploits.txt
echo "$ksmt" >> Possible\ Exploits.txt
echo "$nkto" >> Possible\ Exploits.txt
echo "$bsui" >> Possible\ Exploits.txt
echo "$hpng" >> Possible\ Exploits.txt
echo "$ecap" >> Possible\ Exploits.txt
echo "$sysints" >> Possible\ Exploits.txt
echo "$w3af" >> Possible\ Exploits.txt
echo "$scpy" >> Possible\ Exploits.txt
echo "$hyda" >> Possible\ Exploits.txt
echo "$pros" >> Possible\ Exploits.txt
echo "$oc" >> Possible\ Exploits.txt
echo "$rc" >> Possible\ Exploits.txt
echo "$msf" >> Possible\ Exploits.txt
echo "$tlnt" >> Possible\ Exploits.txt
echo "$ovas" >> Possible\ Exploits.txt
echo "$oVAS" >> Possible\ Exploits.txt
echo "$nstmblr" >> Possible\ Exploits.txt
echo "$nStmblr" >> Possible\ Exploits.txt
echo "$amp" >> Possible\ Exploits.txt
echo "$Amp" >> Possible\ Exploits.txt
echo "$sfh" >> Possible\ Exploits.txt
echo "$Sfh" >> Possible\ Exploits.txt
echo "$Wpiti" >> Possible\ Exploits.txt
echo "$wpiti" >> Possible\ Exploits.txt
echo "$Wfzz" >> Possible\ Exploits.txt
echo "$nmsis" >> Possible\ Exploits.txt
echo "$Nmsis" >> Possible\ Exploits.txt
echo "$Ysna" >> Possible\ Exploits.txt
echo "$ysna" >> Possible\ Exploits.txt
echo "$Dnsf" >> Possible\ Exploits.txt
echo "$dsnf" >> Possible\ Exploits.txt
echo "$EA" >> Possible\ Exploits.txt
echo "$ea" >> Possible\ Exploits.txt
echo "$isdr" >> Possible\ Exploits.txt
echo "$ksmc" >> Possible\ Exploits.txt
echo "$NM" >> Possible\ Exploits.txt
echo "$ngp" >> Possible\ Exploits.txt
echo "$ntp" >> Possible\ Exploits.txt
echo "$pof" >> Possible\ Exploits.txt
echo "$bts" >> Possible\ Exploits.txt
echo "$fgd" >> Possible\ Exploits.txt
echo "$l0ck" >> Possible\ Exploits.txt
echo "$mdsa" >> Possible\ Exploits.txt
echo "$SW" >> Possible\ Exploits.txt
echo "$SS" >> Possible\ Exploits.txt
echo "-----Possible-Remote-Exploits-----" >> Possible\ Exploits.txt
echo "$pvssh" >> Possible\ Exploits.txt
echo "$pvwww" >> Possible\ Exploits.txt
echo "$pvsamba" >> Possible\ Exploits.txt
echo "$pvvsftpd" >> Possible\ Exploits.txt
echo "$pvftp" >> Possible\ Exploits.txt
echo "$pvtcp" >> Possible\ Exploits.txt
echo "$pvphp" >> Possible\ Exploits.txt
echo "$pvsmtp" >> Possible\ Exploits.txt
echo "$pvhttp" >> Possible\ Exploits.txt
echo "$pvhttps" >> Possible\ Exploits.txt
echo "-----DPKG-----" >> Possible\ Exploits.txt
echo "$djohn" >> Possible\ Exploits.txt
echo "$djohnny" >> Possible\ Exploits.txt
echo "$dxhydra" >> Possible\ Exploits.txt
echo "$darmitage" >> Possible\ Exploits.txt
echo "$dmetasploit" >> Possible\ Exploits.txt
echo "$dnmap" >> Possible\ Exploits.txt
echo "$dzenmap" >> Possible\ Exploits.txt
echo "$dwireshark" >> Possible\ Exploits.txt
echo "$dnessus" >> Possible\ Exploits.txt
echo "$daircrack" >> Possible\ Exploits.txt
echo "$daircrackng" >> Possible\ Exploits.txt
echo "$dcain" >> Possible\ Exploits.txt
echo "$dbacktrack" >> Possible\ Exploits.txt
echo "$dnetcat" >> Possible\ Exploits.txt
echo "$dtcpdump" >> Possible\ Exploits.txt
echo "$dkismet" >> Possible\ Exploits.txt
echo "$dnikto" >> Possible\ Exploits.txt
echo "$dburpsuite" >> Possible\ Exploits.txt
echo "$dhping" >> Possible\ Exploits.txt
echo "$dettercap" >> Possible\ Exploits.txt
echo "$dsysinternals" >> Possible\ Exploits.txt
echo "$dw3af" >> Possible\ Exploits.txt
echo "$dhydra" >> Possible\ Exploits.txt
echo "$dparos" >> Possible\ Exploits.txt
echo "$dophcrack" >> Possible\ Exploits.txt
echo "$drainbowcrack" >> Possible\ Exploits.txt
echo "$dmetasploitframework" >> Possible\ Exploits.txt
echo "$dtelnet" >> Possible\ Exploits.txt
echo "$dopenvas" >> Possible\ Exploits.txt
echo "$vdopenVAS" >> Possible\ Exploits.txt
echo "$dnetStumbler" >> Possible\ Exploits.txt
echo "$dnetstumbler" >> Possible\ Exploits.txt
echo "$damap" >> Possible\ Exploits.txt
echo "$dAmap" >> Possible\ Exploits.txt
echo "$dskipfis" >> Possible\ Exploits.txt
echo "$dSkipFish" >> Possible\ Exploits.txt
echo "$dWapiti" >> Possible\ Exploits.txt
echo "$dwapiti" >> Possible\ Exploits.txt
echo "$dWfuzz" >> Possible\ Exploits.txt
echo "$dwfuzz" >> Possible\ Exploits.txt
echo "$dNemisis" >> Possible\ Exploits.txt
echo "$dnemisis" >> Possible\ Exploits.txt
echo "$dyersinia" >> Possible\ Exploits.txt
echo "$ddsniff" >> Possible\ Exploits.txt
echo "$dDsniff" >> Possible\ Exploits.txt
echo "$dEtherApe" >> Possible\ Exploits.txt
echo "$dethrape" >> Possible\ Exploits.txt
echo "$dinSSIDe" >> Possible\ Exploits.txt
echo "$dssider" >> Possible\ Exploits.txt
echo "$dKismac" >> Possible\ Exploits.txt
echo "$dKisMac" >> Possible\ Exploits.txt
echo "$dKismca" >> Possible\ Exploits.txt
echo "$dNetworkMiner" >> Possible\ Exploits.txt
echo "$dnetworkmine" >> Possible\ Exploits.txt
echo "$dNgrep" >> Possible\ Exploits.txt
echo "$dngrep" >> Possible\ Exploits.txt
echo "$dNtop" >> Possible\ Exploits.txt
echo "$dntop" >> Possible\ Exploits.txt
echo "$dP0f" >> Possible\ Exploits.txt
echo "$dp0f" >> Possible\ Exploits.txt
echo "$dBrutus" >> Possible\ Exploits.txt
echo "$dbrutus" >> Possible\ Exploits.txt
echo "$dFgdump" >> Possible\ Exploits.txt
echo "$dfgdump" >> Possible\ Exploits.txt
echo "$dL0phtCrack" >> Possible\ Exploits.txt
echo "$dl0phtcrack" >> Possible\ Exploits.txt
echo "$dMedusa" >> Possible\ Exploits.txt
echo "$dmedusa" >> Possible\ Exploits.txt
echo "$dSolarWinds" >> Possible\ Exploits.txt
echo "$dsolarwinds" >> Possible\ Exploits.txt
echo "$dSuperScan" >> Possible\ Exploits.txt
echo "$dsuperscan" >> Possible\ Exploits.txt

echo "Done"
