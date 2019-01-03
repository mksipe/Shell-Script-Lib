#/bin/sh
# PHP metapackage to check for.
# php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php
fised -i "s/^expose_php=*/expose_php=off" /etc/php5/apaceh2/php.ini
sed -i "s/^allow_url_fopen=*/allow_url_fopen=off" /etc/php5/apaceh2/php.ini
sed -i "s/^allow_url_include=*/allow_url_include=off" /etc/php5/apaceh2/php.ini
sed -i "s/^disable_functions=*/disable_functions=exec,shell_exec,passthru,system,popen,curl_exec,curl_multi_exec,parse_ini_file,show_source,proc_open,pcntl_exec" /etc/php5/apaceh2/php.ini
sed -i "s/^upload_maX_filesize = */upload_max_filesize = 2M" /etc/php5/apaceh2/php.ini
sed -i "s/^max_execution_time = */max_execution_time = 30" /etc/php5/apaceh2/php.ini
sed -i "s/^max_input_time = */max_input_time = 60" /etc/php5/apaceh2/php.ini
