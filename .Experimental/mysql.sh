# ADD SHEBANG AND PRIVCHECK
if [ $(which mysql |grep mysql -c) = 1 ];
then echo "[INSTALLED] MYSQL ";
else echo "[NOT_INSTALLED] MYSQL " & apt install mysql -y;
if [ $(which mysql |grep mysql -c) = 0 ];
then echo "[ERROR] MYSQL" & exit 1;
else echo "[INSTALLED] MYSQL";
fi;
fi
mysql_secure_installation
echo "Enter SQL Password" # yes im well aware that this is in plain test and is therefore not secure.
read PASS
mysql –u root –p $PASS
CREATE USER ‘myusr’@’localhost’ IDENTIFIED BY ‘password’; # It would be smart to change this to another password.
GRANT SELECT,INSERT,UPDATE,DELETE ON mydb.* TO ‘myusr’@’localhost’ IDENTIFIED BY ‘password’;
FLUSH PRIVILEGES;
exit
sed -i "s/^bind-address=*/Bind-address=127.0.0.1" /etc/mysql/my.conf 
sed -i "s/^local-infile=*/local-infile=0" /etc/mysql/my.conf
echo "[mysqld]" >> /etc/mysql/my.conf
