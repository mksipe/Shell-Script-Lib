#!/bin/sh
#installing if not already there
yum install httpd -y

#stopping
service httpd stop

#editing home page
cd /var/www/html
touch index.html
echo "HEY" >> index.html

#moving in conf file
mv /etc/httpd/conf/httpd.conf /etc/httpd/conf/httpd.conf.bak
mv $(pwd)/httpd.conf /etc/httpd/conf/httpd.conf

#reloading and restarting
service httpd reload
service httpd restart