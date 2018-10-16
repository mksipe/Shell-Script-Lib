#!/bin/sh
mkdir /Framework
cd /Framework
wget https://github.com/ossec/ossec-hids/archive/2.9.0.tar.gz
tar -xvzf 2.9.0.tar.gz
cd ossec-hids-2.9.0
sh install.sh
/var/ossec/bin/ossec-control start
cd /bin
rm -r /Framework
