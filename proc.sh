#!/bin/sh
while 
do
    ufw enable & sleep 60
    service snort start & sleep 120
    clamscan -r --remove / & sleep 3600