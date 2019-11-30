#!/bin/bash
#Lampstack server 1 machine
#Author :Wendell
#Description: LAMPSTACK SERVER Installation
#Date: 11/2/2019


echo " This will install any updates to the centos packages "

sleep 2

yum update -y

echo " Installing Apache Server and configuring IP tables to stay operational while powered up. Please wait....... "

sleep 2

yum install httpd -y

sleep 3

chkconfig httpd on

echo " Install is complete for Apache Server and is configured to stay on...  I'm still working on the iptables. my apologies.  Please give me another moment to resolve this,  I will add a rule to open port 80 to allow TCP.  "

sleep 3

# CENTOS 7 Note: if you are doing this on centos 7, run this command before configuring the firewall. 

yum install iptables-services -y

sleep 2

sed -i '10 i\-A INPUT -m state --state NEW -M tcp -p tcp --dport 80 -j ACCEPT' /etc/sysconfig/iptables

sleep 1

echo " I am going to restart IPtables for you and port 80 should now be open too"

service iptables restart

sleep 2 

echo " Please wait while the process of Installing MySQL database server takes place."

sleep 3

yum install mysql-server -y

echo "....starting MySQL services and configuring it to stay on permanently."

sleep 2

service mysqld start

sleep 1

chkconfig mysqld on

sleep 1

echo " Enter current password for root.  (Hit Enter as there is none.)  There is not currently a password."

sleep 5

mysql_secure_installation

sleep 2

echo " Installing PHP. Please wait......"

sleep 2

yum install php php-mysql -y

sleep 2

echo "Installation complete and configuring PHP...."

sleep 1

touch /var/www/html/info.php

sleep 1

sed -i '1 i\<?php phpinfo(); ?>' /var/www/html/info.php

sleep 2

echo "Configuration complete and restarting Apache Services"

sleep 2

service restart httpd

echo "on the browser, type the ipaddress of your linux box to verify the apache page then type /ipaddress/info.php to verify the php page" 


sleep 6

echo " Installing the php-gd to the system.  Please wait....."

yum install php-gd -y

echo "php-gd install complete..  Moving onto Wordpress download unzip and installation.  Please wait....."

sleep 2

wget https://wordpress.org/wordpress-5.1.1.tar.gz

sleep 2

echo "Download completed for Wordpress and now to extract files required for install. "

tar -xvz wordpress-5.1.1.tar.gz/tmp

sleep 2

cp -r /tmp/wordpress/* /var/www/html/

echo "Files have been extracted and making needed changes to configure finish configuration. "

sleep 1

mkdir /var/www/html/wp-content/uploads

sleep 1

chown -R apache:apache /var/www/html/*

sleep 1

cp /var/www/html/wp-config-sample.php wp-config.php

echo " All configuration has been complete.  Restarting Apache server one last time"

sleep 2

service httpd restart

sleep 2

echo "Now go and test what has been created; open the browser, use the ip address of your lamp stack server. If you encounter any issues besure your users on mysql are configured. Otherwise, you will now have a Lampstack server.
BOOM! BOOM! BOOM!"

sleep 4

exit

