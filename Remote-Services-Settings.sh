#!/bin/sh

echo "Changing Remote Logon Settings" 

# SSH

sudo sed  's/^PermitRootLogin.*yes/PermitRootLogin no' | sudo tee -a /etc/ssh/sshd_config
sudo sed  's/^Protocol.*/Protocol 2' | sudo tee -a /etc/ssh/sshd_config
sudo sed  's/^PermitEmptyPasswords.*yes/PermitEmptyPasswords no' | sudo tee -a /etc/ssh/sshd_config
sudo sed  's/^LoginGraceTime.*/LoginGraceTime 1m' | sudo tee -a /etc/ssh/sshd_config
echo "DO NOT NAME THE KEY"
sudo ssh-keygen -t rsa
sudo service ssh restart 

# VSFTPD

sudo sed  's/^anonymous_enable=.*YES/anonymous_enable=NO' | sudo tee -a /etc/vsftpd.conf
sudo sed  's/^local_enable=.*YES/local_enable=NO' | sudo tee -a /etc/vsftpd.conf
sudo sed  's/^write_enable=.*YES/write_enable=NO' | sudo tee -a /etc/vsftpd.conf
sudo sed  's/^chroot_local_user=.*YES/chroot_local_user=NO' | sudo tee -a /etc/vsftpd.conf
sudo sed  's/^local_max_rate=.*/local_max_rate=131072' | sudo tee -a /etc/vsftpd.conf
sudo service vsftpd restart 

# Apache PHP 

sudo echo "disable_functions = exec,system,shell_exec,passthru" | sudo tee -a /etc/php5/apache2/php.ini
sudo echo "register_globals = OFF" | sudo tee -a /etc/php5/apache2/php.ini 
sudo echo "expose_php = OFF" | sudo tee -a /etc/php5/apache2/php.ini
sudo echo "display_errors = OFF" | sudo tee -a /etc/php5/apache2/php.ini
sudo echo "track errors = OFF" | sudo tee -a /etc/php5/apache2/php.ini
sudo echo "html_eroors = OFF" | sudo tee -a /etc/php5/apache2/php.ini
sudo echo "magic_quotes_gpc = OFF" | sudo tee -a /etc/php5/apache2/php.ini
sudo echo "mail.add_x_header = OFF" | sudo tee -a /etc/php5/apache2/php.ini
sudo echo "session.name = NEWSESSID" | sudo tee -a /etc/php5/apache2/php.ini
sudo echo "ServerTokens prod" | sudo tee -a /etc/apache2/conf-avaliable/security.conf
sudo echo "ServerSignature OFF" | sudo tee -a /etc/apache2/conf-avaliable/security.conf
sudo echo "TraceEnable OFF" | sudo tee -a /etc/apache2/conf-avaliable/security.conf
sudo echo "Header unset Etag" | sudo tee -a /etc/apache2/conf-avaliable/security.conf
sudo echo "Header always unset X-Powered-By" | sudo tee -a /etc/apache2/conf-avaliable/security.conf
sudo echo "FileEtag None" | sudo tee -a /etc/apache2/conf-avaliable/security.conf
sudo service apache2 restart

# Samba

echo "# hosts allow = 127.0.0.1 192.168.1.0/24" | sudo tee -a /etc/samba/smb.conf
echo "hosts allow = 127.0.0.1 192.168.1.1 192.168.1.2" | sudo tee -a /etc/samba/smb.conf
echo "hosts deny = 0.0.0.0/0"


echo "Done"