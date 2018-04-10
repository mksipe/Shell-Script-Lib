#!/bin/sh

echo "Initializing Directories"
apt install nano -y
apt install yum -y
apt install vim -y
apt install nmap -y
apt install unzip -y
apt install aptitude -y 
apt install clamav -y
mkdir System\ Information\ Gathering
chmod 755 Startup.sh
mv Current_Connections.sh System\ Information\ Gathering
mv Hacking-Tool-Search.sh System\ Information\ Gathering
mv Network\ Status.sh System\ Information\ Gathering
mv System\ Information.sh System\ Information\ Gathering
mv Startup.sh System\ Information\ Gathering
mkdir git
mv *.md git
mv LICENSE git 
mkdir Firewall-Tools
chmod 755 UFWC.sh
mv UFWC.sh Firewall-Tools
chmod 755 Malware-Detection
mkdir Malware-Detection
chmod 755 clamAVconf.sh
mv clamAVconf.sh Malware-Detection
mkdir Network-Tools
chmod 755 Netspoof-Prevention.sh
mv Netspoof-Prevention.sh Network-Tools
chmod 755 ARP-Spoof-Prevention
mv ARP-Spoof-Prevention.sh Network-Tools
mkdir Remote\ Logon
chmod 755 Remote-Services-Settings.sh
mv Remote-Services-Settings.sh Remote\ Logon
mkdir User\ Policies
chmod 755 Password-Settings.sh
mv Password-Settings.sh User\ Policies
chmod 755 User-Auth.sh
mv User-Auth.sh User\ Policies
mv Exploit-Search.sh System\ Information\ Gathering
mv Firefox.sh System-Tuning
mv ARP-Spoof-Prevention.sh Firewall-Tools
chmod 755 Network-Scan.sh
mv Network-Scan.sh Network-Tools
mkdir Updates
chmod 755 Updates
chmod 755 Updates.sh
mv Update.sh Updates
echo "Creating Readme"
touch README.txt
/dev/null > README.txt
echo "----------HOW-TO-USE----------
To use a tool you will need to cd into a directory and chmod the startup program. 
Not all directories have one. In this case they should have already been chmodded and shlould be already executable. 
A majority of the commands only need to be ran once.
----------EXAMPLE----------
Objective: Configure UFW
step 1 - cd Firewall-Tools
step 2 - ./UFWC.sh
----------RESULTS----------
The results to the specified command will automatically make a new file containing the result of the script.
---------------------------" >> README.txt
echo "Done"
rm -f INITIALIZE.sh
