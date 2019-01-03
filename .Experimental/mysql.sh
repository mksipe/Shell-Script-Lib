# ADD SHEBANG AND PRIVCHECK
if [ $(which mysql-server |grep mysql-server -c) = 1 ];
then echo "[INSTALLED] MYSQL-SERVER ";
else echo "[NOT_INSTALLED] MYSQL-SERVER " & apt install mysql-server -y;
if [ $(which mysql-server |grep mysql-server -c) = 0 ];
then echo "[ERROR] MYSQL-SERVER" & exit 1;
else echo "[INSTALLED] MYSQL-SERVER";
fi;
fi
mysql_secure_installation
mysql –u root –p
CREATE USER ‘myusr’@’localhost’ IDENTIFIED BY ‘password’; # It would be smart to change this to another password.
GRANT SELECT,INSERT,UPDATE,DELETE ON mydb.* TO ‘myusr’@’localhost’ IDENTIFIED BY ‘password’;
FLUSH PRIVILEGES;
exit
sed -i "s/^bind-address=*/Bind-address=127.0.0.1" /etc/mysql/my.conf 
sed -i "s/^local-infile=*/local-infile=0" /etc/mysql/my.conf
echo "[mysqld]" >> /etc/mysql/my.conf
