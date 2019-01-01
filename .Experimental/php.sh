#ADD SHEBANG AND PRIVCHECK
if [ $(which php5 |grep php5 -c) = 1 ];
then echo "[INSTALLED] PGP5 ";
else echo "[NOT_INSTALLED] PHP5 " & apt install php5 -y;
if [ $(which php5 |grep php5 -c) = 0 ];
then echo "[ERROR] PHP5" & exit 1;
else echo "[INSTALLED] PHP5";
fi;
fised -i "s/^expose_php=*/expose_php=off" /etc/php5/apaceh2/php.ini
sed -i "s/^allow_url_fopen=*/allow_url_fopen=off" /etc/php5/apaceh2/php.ini
sed -i "s/^allow_url_include=*/allow_url_include=off" /etc/php5/apaceh2/php.ini
sed -i "s/^disable_functions=*/disable_functions=exec,shell_exec,passthru,system,popen,curl_exec,curl_multi_exec,parse_ini_file,show_source,proc_open,pcntl_exec" /etc/php5/apaceh2/php.ini
sed -i "s/^upload_maX_filesize = */upload_max_filesize = 2M" /etc/php5/apaceh2/php.ini
sed -i "s/^max_execution_time = */max_execution_time = 30" /etc/php5/apaceh2/php.ini
sed -i "s/^max_input_time = */max_input_time = 60" /etc/php5/apaceh2/php.ini
