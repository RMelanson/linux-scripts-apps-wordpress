#Configure WordPress

###################### Testing below ###########################
wpConfigDir=$PWD
cd /tmp/wordpress/install/
cp wp-config.php /var/www/html/wordpress/
cd /var/www/html/wordpress/
chmod 777 wp-config.php

mysql -u root
CREATE DATABASE jason;
GRANT ALL PRIVILEGES ON jason.* TO "jason"@"localhost" IDENTIFIED BY "jason";
FLUSH PRIVILEGES;
exit;

cd wpConfigDir
