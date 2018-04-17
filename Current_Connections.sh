#!/bin/sh

Remote_Connections=$(netstat -lntp)
Live_Connections=$(w)
date=$(date -u)
A_Connections=$(netstat -tulpn)

echo "_______________________________________________________________________________" 

echo "Recording remote connections to the system."

echo "CONNECTIONS (last updated on $date)" 
echo "----------Remote Connections----------"
echo "$Remote_Connections"

echo "----------Live System Sessions----------"
echo "$Live_Connections"

echo "----------Active Connections----------" 
echo "$A_Connections"
echo "Done"
