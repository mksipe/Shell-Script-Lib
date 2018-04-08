#!/bin/sh

echo "Initializing Directories"
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
mkdir Network-Tools
chmod 755 Netspoof-Prevention.sh
mv Netspoof-Prevention.sh Network-Tools
mkdir Remote\ Logon
chmod 755 Remote-Services-Settings.sh
mv Remote-Services-Settings.sh Remote\ Logon
mkdir User\ Policies
chmod 755 Password-Settings.sh
mv Password-Settings.sh User\ Policies
chmod 755 User-Auth.sh
mv User-Auth.sh User\ Policies
mv Exploit-Search.sh System\ Information\ Gathering
echo "Creating Readme"
touch README.txt
echo "----------HOW-TO-USE----------
To use a tool you will need to cd into a directory and chmod the startup program. 
Not all directories have one. In this case they should have already been chmodded and shlould be already executable. 
A majority of the commands only need to be ran once.
----------EXAMPLE----------
Objective: Configure UFW
step 1 - cd Firewall-Tools
step 2 - ./UFWC.sh
----------TROUBLESHOOTING----------
Read the WIKI for troubleshooting at 
https://github.com/mksipe/System-Services/wiki/Troubleshooting" >> README.txt
echo "Done"
rm -f INITIALIZE.sh
