#/bin/sh
# PHP metapackage to check for.
if [ $(which php-pear |grep php-pear -c) = 1 ];
then echo "[INSTALLED] PHP-PEAR ";
else echo "[NOT_INSTALLED] PHP-PEAR " & apt-get install -qq -y php-pear;
if [ $(which php-pear |grep php-pear -c) = 0 ];
then echo "[ERROR] PHP-PEAR" & exit 255;
else echo "[INSTALLED] PHP-PEAR";
fi;
fi
if [ $(which php-fpm |grep php-fpm -c) = 1 ];
then echo "[INSTALLED] PHP-FPM ";
else echo "[NOT_INSTALLED] PHP-FPM " & apt-get install -qq -y php-fpm;
if [ $(which php-fpm |grep php-fpm -c) = 0 ];
then echo "[ERROR] PHP-FPM" & exit 255;
else echo "[INSTALLED] PHP-FPM";
fi;
fi
if [ $(which php-dev |grep php-dev -c) = 1 ];
then echo "[INSTALLED] PHP-DEV ";
else echo "[NOT_INSTALLED] PHP-DEV " & apt-get install -qq -y php-dev;
if [ $(which php-dev |grep php-dev -c) = 0 ];
then echo "[ERROR] PHP-DEV" & exit 255;
else echo "[INSTALLED] PHP-DEV";
fi;
fi
if [ $(which php-zip |grep php-zip -c) = 1 ];
then echo "[INSTALLED] PHP-ZIP ";
else echo "[NOT_INSTALLED] PHP-ZIP " & apt-get install -qq -y php-zip;
if [ $(which php-zip |grep php-zip -c) = 0 ];
then echo "[ERROR] PHP-ZIP" & exit 255;
else echo "[INSTALLED] PHP-ZIP";
fi;
fi
if [ $(which php-curl |grep php-curl -c) = 1 ];
then echo "[INSTALLED] PHP-CURL ";
else echo "[NOT_INSTALLED] PHP-CURL " & apt-get install -qq -y php-curl;
if [ $(which php-curl |grep php-curl -c) = 0 ];
then echo "[ERROR] PHP-CURL" & exit 255;
else echo "[INSTALLED] PHP-CURL";
fi;
fi
if [ $(which php-xmlrpc |grep php-xmlrpc -c) = 1 ];
then echo "[INSTALLED] PHP-XMLRPC ";
else echo "[NOT_INSTALLED] PHP-XMLRPC " & apt-get install -qq -y php-xmlrpc;
if [ $(which php-xmlrpc |grep php-xmlrpc -c) = 0 ];
then echo "[ERROR] PHP-XMLRPC" & exit 255;
else echo "[INSTALLED] PHP-XMLRPC";
fi;
fi
if [ $(which php-gd |grep php-gd -c) = 1 ];
then echo "[INSTALLED] PHP-GD ";
else echo "[NOT_INSTALLED] PHP-GD " & apt-get install -qq -y php-gd;
if [ $(which php-gd |grep php-gd -c) = 0 ];
then echo "[ERROR] PHP-GD" & exit 255;
else echo "[INSTALLED] PHP-GD";
fi;
fi
if [ $(which php-mysql |grep php-mysql -c) = 1 ];
then echo "[INSTALLED] PHP-MYSQL ";
else echo "[NOT_INSTALLED] PHP-MYSQL " & apt-get install -qq -y php-mysql;
if [ $(which php-mysql |grep php-mysql -c) = 0 ];
then echo "[ERROR] PHP-MYSQL" & exit 255;
else echo "[INSTALLED] PHP-MYSQL";
fi;
fi
if [ $(which php-mbstring |grep php-mbstring -c) = 1 ];
then echo "[INSTALLED] PHP-MBSTRING ";
else echo "[NOT_INSTALLED] PHP-MBSTRING " & apt-get install -qq -y php-mbstring;
if [ $(which php-mbstring |grep php-mbstring -c) = 0 ];
then echo "[ERROR] PHP-MBSTRING" & exit 255;
else echo "[INSTALLED] PHP-MBSTRING";
fi;
fi
if [ $(which php-xml |grep php-xml -c) = 1 ];
then echo "[INSTALLED] PHP-XML ";
else echo "[NOT_INSTALLED] PHP-XML " & apt-get install -qq -y php-xml;
if [ $(which php-xml |grep php-xml -c) = 0 ];
then echo "[ERROR] PHP-XML" & exit 255;
else echo "[INSTALLED] PHP-XML";
fi;
fi
if [ $(which libapache2-mod-php |grep libapache2-modp-php -c) = 1 ];
then echo "[INSTALLED] LIBAPACHE2_MOD_PHP ";
else echo "[NOT_INSTALLED] LIBAPACHE2_MOD_PHP " & apt-get install -qq -y libapache2-mod-php;
if [ $(which libapache2-mod-php |grep libapache2-mod-php -c) = 0 ];
then echo "[ERROR] LIBAPACHE2_MOD_PHP" & exit 255;
else echo "[INSTALLED] LIBAPACHE2_MOD_PHP";
fi;
fi
if [ $(php -v | grep 5.0 -c ) = 3 ];
then;
sed -i "s/^expose_php=*/expose_php=off" /etc/php5/apache2/php.ini
sed -i "s/^allow_url_fopen=*/allow_url_fopen=off" /etc/php5/apache2/php.ini
sed -i "s/^allow_url_include=*/allow_url_include=off" /etc/php5/apache2/php.ini
sed -i "s/^disable_functions=*/disable_functions=exec,shell_exec,passthru,system,popen,curl_exec,curl_multi_exec,parse_ini_file,show_source,proc_open,pcntl_exec" /etc/php5/apache2/php.ini
sed -i "s/^upload_maX_filesize = */upload_max_filesize = 2M" /etc/php5/apache2/php.ini
sed -i "s/^max_execution_time = */max_execution_time = 30" /etc/php5/apache2/php.ini
sed -i "s/^max_input_time = */max_input_time = 60" /etc/php5/apache2/php.ini
else continue;
if  [ $(php -v | grep 7.2 -c ) = 3 ];
then;
# This would be for later versions of php such as 7.2
sed -i "s/^expose_php=*/expose_php=off" /etc/php/7.2/apache2/php.ini
sed -i "s/^allow_url_fopen=*/allow_url_fopen=off" /etc/php/7.2/apache2/php.ini
sed -i "s/^allow_url_include=*/allow_url_include=off" /etc/php/7.2/apache2/php.ini
sed -i "s/^disable_functions=*/disable_functions=exec,shell_exec,passthru,system,popen,curl_exec,curl_multi_exec,parse_ini_file,show_source,proc_open,pcntl_exec" /etc/php/7.2/apache2/php.ini
sed -i "s/^upload_maX_filesize = */upload_max_filesize = 2M" /etc/php/7.2/apache2/php.ini
sed -i "s/^max_execution_time = */max_execution_time = 30" /etc/php/7.2/apache2/php.ini
sed -i "s/^max_input_time = */max_input_time = 60" /etc/php5/apache2/php.ini
else echo "ERROR";
fi
