#Install php-mysql

echo 'Installing php-mysql'
#In order to take effect, need a restart on httpd service
#yum install php php-mysql -y
sudo yum install -y amazon-linux-extras
amazon-linux-extras install php7.2 -y
service httpd restart
