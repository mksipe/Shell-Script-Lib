#!/bin/sh
apt install snort -y
sudo apt install -y gcc libpcre3-dev zlib1g-dev libpcap-dev openssl libssl-dev libnghttp2-dev libdumbnet-dev bison flex libdnet
apt-get install openssh-server ethtool build-essential libpcap-dev libpcre3-dev libdumbnet-dev bison flex zlib1g-dev liblzma-dev openssl libssl-dev
systemctl enable snort
systemctl start snort
systemctl status snort
sed -i "s/^#//" /bin/lib/sh/MK3S/data/Snort.db > /bin/lib/sh/MK3S/data/Snort.db.new # Removes "#" from the file to make all these new rules valid.
sed -i '/Dagger/d' /bin/lib/sh/MK3S/data/Snort.db.new # Deletes broken Rule
sed -i '/Worm\ Client/d' /bin/lib/sh/MK3S/data/Snort.db.new # Deletes Broken Rule
sed -i '/GetInfo/d' /bin/lib/sh/MK3S/data/Snort.db.new # Deletes Broken Rule
sed -i '/BN\|10/d' /bin/lib/sh/MK3S/data/Snort.db.new # Deletes Broken Rule
sed -i '/WHATISIT/d' /bin/lib/sh/MK3S/data/Snort.db.new # Deletes Broken Rule
sed -i '/Remote\|' /bin/lib/sh/MK3S/data/Snort.db.new # Deletes Broken Rule
echo "Snort Installed"
echo "0 * * * * snort -D -A full -vc /etc/snort/snort.conf -F /bin/lib/sh/MK3S/data/Snort.db.new -A full" | sudo tee -a /etc/crontab
cat /bin/lib/sh/MK3S/data/Snort.db.new >> /etc/snort/rules/local.rules
