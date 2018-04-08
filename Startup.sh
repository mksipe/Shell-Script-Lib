#!/bin/sh

chmod 755 System\ Information.sh
chmod 755 Current_Connections.sh
chmod 755 Hacking-Tool-Search.sh
chmod 755 Network\ Status.sh

./System\ Information.sh
./Current_Connections.sh
./Network\ Status.sh
./Hacking-Tool-Search.sh


mkdir 1-Results

mv Connections.txt 1-Results
mv Possible\ Exploits.txt 1-Results
mv System\ Information\ File.txt 1-Results
mv Network\ Information.txt 1-Results
chmod 600 System\ Information\.sh
chmod 600 Current_Connections.sh
chmod 600 Hacking-Tool-Search.sh

mkdir git-stuff

mv *.md git-stuff
mv LICENSE git-stuff

echo "Finished"

