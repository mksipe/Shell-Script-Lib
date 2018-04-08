#!/bin/sh

Remote_Connections=$(netstat -lntp)
Live_Connections=$(w)
date=$(date -u)
A_Connections=$(netstat -tulpn)

sudo touch Connections.txt
sudo chmod 755 Connections.txt
sudo touch CONNECTION_History.txt
sudo chmod 755 CONNECTION_History.txt
cat Connections.txt >> CONNECTION_History.txt
echo "_______________________________________________________________________________" >> CONNECTION_History.txt

echo "Recording remote connections to the system."

cat /dev/null > Connections.txt

echo "CONNECTIONS (last updated on $date)" >> Connections.txt
echo "----------Remote Connections----------" >> Connections.txt
echo "$Remote_Connections" >> Connections.txt

echo "----------Live System Sessions----------" >> Connections.txt
echo "$Live_Connections" >> Connections.txt

echo "----------Active Connections----------" >> Connections.txt
echo "$A_Connections" >> Connections.txt
echo "Done"
