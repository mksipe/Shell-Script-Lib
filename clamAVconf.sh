#!/bin/sh
spinner () {
    local pid=$!
    local delay=0.25
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}
date=$(date -u)
echo "Configuring Clam Antivirus"
touch CAVoutput.txt
sudo freshclam
echo "scanning system for infections. This may take a while outputs are in a new file"
cat /dev/null > CAVoutput.txt
echo "$date">> CAVoutput.txt
clamscan -r --remove /  >> CAVoutput.txt & spinner
exit 0
echo "0 0 * * * bash clamscan -r --remove /" >> /etc/crontab
chmod 400 clamAVconf.sh
echo "configuration complete task was automatically added to cron scheduled to run on entire system every hour."