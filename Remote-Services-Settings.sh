#!/bin/sh

echo "Changing Remote Logon Settings" 

# SSH

sudo sed -i '/PermitRootLogin yes/c\PermitRootLogin no' /etc/ssh/sshd_config
sudo sed -i '/Protocol/c\Protocol 2' /etc/ssh/sshd_config
sudo sed -i 'PermitEmptyPasswords yes/c\PermitEmptyPasswords no' /etc/ssh/sshd_config
sudo sed -i 'LoginGraceTime/c\LoginGraceTime 1m' /etc/ssh/sshd_config
sudo service ssh restart 

# VSFTPD

sudo sed -i '/anonymous_enable=YES/c\anonymous_enable=NO' >> /etc/vsftpd.conf
sudo sed -i '/local_enable=YES/c\local_enable=NO' >> /etc/vsftpd.conf
sudo sed -i '/write_enable=YES/c\write_enable=NO' >> /etc/vsftpd.conf
sudo sed -i '/chroot_local_user=YES/c\chroot_local_user=NO' >> /etc/vsftpd.conf
sudo sed -i '/local_max_rate=*/c\local_max_rate=131072' >> /etc/vsftpd.conf
sudo service vsftpd restart 

# Apache PHP 

sudo echo "disable_functions = exec,system,shell_exec,passthru" >> /etc/php5/apache2/php.ini
sudo echo "register_globals = OFF" >> /etc/php5/apache2/php.ini 
sudo echo "expose_php = OFF" >> /etc/php5/apache2/php.ini
sudo echo "display_errors = OFF" >> /etc/php5/apache2/php.ini
sudo echo "track errors = OFF" >> /etc/php5/apache2/php.ini
sudo echo "html_eroors = OFF" >> /etc/php5/apache2/php.ini
sudo echo "magic_quotes_gpc = OFF" >> /etc/php5/apache2/php.ini
sudo echo "mail.add_x_header = OFF" >> /etc/php5/apache2/php.ini
sudo echo "session.name = NEWSESSID" >> /etc/php5/apache2/php.ini
sudo echo "ServerTokens prod" >> /etc/apache2/conf-avaliable/security.conf
sudo echo "ServerSignature OFF" >> /etc/apache2/conf-avaliable/security.conf
sudo echo "TraceEnable OFF" >> /etc/apache2/conf-avaliable/security.conf
sudo echo "Header unset Etag" >> /etc/apache2/conf-avaliable/security.conf
sudo echo "Header always unset X-Powered-By" >> /etc/apache2/conf-avaliable/security.conf
sudo echo "FileEtag None" >> /etc/apache2/conf-avaliable/security.conf
sudo service apache2 restart

# Samba

echo "# hosts allow = 127.0.0.1 192.168.1.0/24" >> /etc/samba/smb.conf
echo "hosts allow = 127.0.0.1 192.168.1.1 192.168.1.2" >> /etc/samba/smb.conf
echo "hosts deny = 0.0.0.0/0"


echo "Done"