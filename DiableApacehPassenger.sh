gsed -i'' '/passenger.conf/s/^/#/g' /opt/local/etc/httpd/httpd.conf
gsed -i'' '/passenger.so/s/^/#/g' /opt/local/etc/httpd/includes/dso.conf
svcadm restart apache