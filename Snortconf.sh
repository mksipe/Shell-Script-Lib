#!/bin/sh
apt install snort -y
IP=$(hostname -I)
sudo apt install -y gcc libpcre3-dev zlib1g-dev libpcap-dev openssl libssl-dev libnghttp2-dev libdumbnet-dev bison flex libdnet
apt-get install openssh-server ethtool build-essential libpcap-dev libpcre3-dev libdumbnet-dev bison flex zlib1g-dev liblzma-dev openssl libssl-dev
mkdir ~/snort_src && cd ~/snort_src
wget https://www.snort.org/downloads/snort/daq-2.0.6.tar.gz
tar -xvzf daq-2.0.6.tar.gz
cd daq-2.0.6
./configure && make && sudo make install
wget https://www.snort.org/downloads/snort/snort-2.9.11.1.tar.gz
tar -xvzf snort-2.9.11.1.tar.gz
cd snort-2.9.11.1
./configure --enable-sourcefire && make && sudo make install
sudo ldconfig
snort -V
sudo ln -s /usr/local/bin/snort /usr/sbin/snort
sudo groupadd snort
sudo useradd snort -r -s /sbin/nologin -c SNORT_IDS -g snort
sudo mkdir -p /etc/snort/rules
sudo mkdir /var/log/snort
sudo mkdir /usr/local/lib/snort_dynamicrules
sudo chmod -R 5775 /etc/snort
sudo chmod -R 5775 /var/log/snort
sudo chmod -R 5775 /usr/local/lib/snort_dynamicrules
sudo chown -R snort:snort /etc/snort
sudo chown -R snort:snort /var/log/snort
sudo chown -R snort:snort /usr/local/lib/snort_dynamicrules
sudo touch /etc/snort/rules/whitelist.rules
sudo touch /etc/snort/rules/blacklist.rules
sudo touch /etc/snort/rules/local.rules
mkdir /etc/snort/preproc_rules
cd snort-2.9.11.1
cp -avr *.conf *.map *.dtd /etc/snort/
cp -avr src/dynamic-preprocessors/build/usr/local/lib/snort_dynamicpreprocessor/* /usr/local/lib/snort_dynamicpreprocessor/
sed -i "s/include \$RULE\_PATH/#include \$RULE\_PATH/" /etc/snort/snort.conf
echo "# Setup the network addresses you are protecting 
 ipvar HOME_NET $IP/24
 
 # Set up the external network addresses. Leave as "any" in most situations 
 ipvar EXTERNAL_NET any
 
 var RULE_PATH /etc/snort/rules 
 var SO_RULE_PATH /etc/snort/so_rules 
 var PREPROC_RULE_PATH /etc/snort/preproc_rules 
 var WHITE_LIST_PATH /etc/snort/rules 
 var BLACK_LIST_PATH /etc/snort/rules 
 include $RULE_PATH/local.rules" |sudo tee -a /etc/snort/snort.conf
 snort -T -i eth0 -c /etc/snort/snort.conf
echo " alert tcp any any -> $HOME_NET 21 (msg:"FTP connection attempt"; sid:1000001; rev:1;) 
 alert icmp any any -> $HOME_NET any (msg:"ICMP connection attempt"; sid:1000002; rev:1;) 
 alert tcp any any -> $HOME_NET 80 (msg:"TELNET connection attempt"; sid:1000003; rev:1;)" | sudo tee -a /etc/snort/rules/local.rules
snort -A console -q -c /etc/snort/snort.conf -i eth0
touch /lib/systemd/system/snort.service
echo " [Unit]
   Description=Snort NIDS Daemon
   After=syslog.target network.target
 [Service]
   Type=simple
   ExecStart=/usr/local/bin/snort -q -c /etc/snort/snort.conf -i eth0
 [Install]
  WantedBy=multi-user.target" | sudo tee -a /lib/systemd/snort.service
systemctl enable snort
systemctl start snort
systemctl status snort
echo "Snort Installed"
echo "0 12 * * * snort" | sudo tee -a /etc/crontab