#!/bin/bash
#apache2 statup script

#installing just in case it's not
apt-get install apache2 -y

#stopping apache server
service apache2 stop

#making a backup of the fresh configs
mv /etc/apache2/apache2.conf /etc/apache2/apache2.conf.bak
mv /etc/apache2/ports.conf /etc/apache2/ports.conf.bak

#moving premade config to apache dir
mv $(pwd)/conf /etc/apache2/apache2.conf

#making the new ports.conf file
echo "NameVirtualHost *:80" > /etc/apache2/ports.conf
echo "Listen 80" >> /etc/apache2/ports.conf
echo "<IfModule mod_ssl.c>" >> /etc/apache2/ports.conf
echo "</IfModule>" >> /etc/apache2/ports.conf
echo "<IfModule mod_gnutls.c>" >> /etc/apache2/ports.conf
echo "    Listen 443" >> /etc/apache2/ports.conf
echo "</IfModule>" >> /etc/apache2/ports.conf

#restarting service
service apache2 restart

#MOD SECURITY SECTION
#installing dependencies
apt-get install libxml2 libxml2-dev libxml2-utils -y
apt-get install libaprutil1 libaprutil1-dev -y
apt-get install php5 -y

#installing mod security
apt-get install libapache-mod-security -y

#moving in my config file
mv /etc/modsecurity/modsecurity.conf-recommended /etc/modsecurity/modsecurity.conf.bak
mv $(pwd)/mod /etc/modsecurity/modsecurity.conf

#installing OWASP Security measures
wget -O SpiderLabs-owasp-modsecurity-crs.tar.gz https://github.com/SpiderLabs/owasp-modsecurity-crs/tarball/master
tar -zxf SpiderLabs-owasp-modsecurity-crs.tar.gz
cp -R SpiderLabs-owasp-modsecurity-crs-*/* /etc/modsecurity/
rm SpiderLabs-owasp-modsecurity-crs.tar.gz
rm -R SpiderLabs-owasp-modsecurity-crs-*
mv /etc/modsecurity/modsecurity_crs_10_setup.conf.example /etc/modsecurity/modsecurity_crs_10_setup.conf

#creating links
cd /etc/modsecurity/base_rules
for f in * ; do ln -s /etc/modsecurity/base_rules/$f /etc/modsecurity/activated_rules/$f ; done
cd /etc/modsecurity/optional_rules
for f in * ; do ln -s /etc/modsecurity/optional_rules/$f /etc/modsecurity/activated_rules/$f ; done 

#adding a php rule
echo "expose_php = Off" >> /etc/php5/apache2/php.ini

#restarting apache to enable

# Hide Apache2 version
echo "ServerSignature Off" >> /etc/apache2/apache2.conf
echo "ServerTokens Prod" >> /etc/apache2/apache2.conf

# Remove ETags
echo "FileETag None" >> /etc/apache2/apache2.conf

# Disable Directory Browsing
a2dismod -f autoindex

# Remove default page
echo "" > /var/www/html/index.html

# Secure root directory
echo "<Directory />" >> /etc/apache2/conf-available/security.conf
echo "Options -Indexes" >> /etc/apache2/conf-available/security.conf
echo "AllowOverride None" >> /etc/apache2/conf-available/security.conf
echo "Order Deny,Allow" >> /etc/apache2/conf-available/security.conf
echo "Deny from all" >> /etc/apache2/conf-available/security.conf
echo "</Directory>" >> /etc/apache2/conf-available/security.conf

# Secure html directory
echo "<Directory /var/www/html>" >> /etc/apache2/conf-available/security.conf
echo "Options -Indexes -Includes" >> /etc/apache2/conf-available/security.conf
echo "AllowOverride None" >> /etc/apache2/conf-available/security.conf
echo "Order Allow,Deny" >> /etc/apache2/conf-available/security.conf
echo "Allow from All" >> /etc/apache2/conf-available/security.conf
echo "</Directory>" >> /etc/apache2/conf-available/security.conf
  
# Use TLS only
sed -i "s/SSLProtocol all -SSLv3/SSLProtocol –ALL +TLSv1 +TLSv1.1 +TLSv1.2/" /etc/apache2/mods-available/ssl.conf

# Use strong cipher suites
sed -i "s/SSLCipherSuite HIGH:\!aNULL/SSLCipherSuite HIGH:\!MEDIUM:\!aNULL:\!MD5:\!RC4/" /etc/apache2/mods-available/ssl.conf

# Enable headers module
a2enmod headers

# Enable HttpOnly and Secure flags
echo "Header edit Set-Cookie ^(.*)\$ \$1;HttpOnly;Secure" >> /etc/apache2/conf-available/security.conf

# Clickjacking Attack Protection
echo "Header always append X-Frame-Options SAMEORIGIN" >> /etc/apache2/conf-available/security.conf

# XSS Protection
echo "Header set X-XSS-Protection \"1; mode=block\"" >> /etc/apache2/conf-available/security.conf

# Enforce secure connections to the server
echo "Header always set Strict-Transport-Security \"max-age=31536000; includeSubDomains\"" >> /etc/apache2/conf-available/security.conf

# MIME sniffing Protection
echo "Header set X-Content-Type-Options: \"nosniff\"" >> /etc/apache2/conf-available/security.conf

# Prevent Cross-site scripting and injections
echo "Header set Content-Security-Policy \"default-src 'self';\"" >> /etc/apache2/conf-available/security.conf

# Prevent DoS attacks - Limit timeout
sed -i "s/Timeout 300/Timeout 60/" /etc/apache2/apache2.conf

service apache2 restart