#!/bin/bash
if [ -f /etc/init.d/mysql* ]; then
    echo "Mysql已经安装!"
else
	yum install -y mysql-server	
	service mysqld start
	mysqladmin -u root password 'fit2cloud'
	mysql -u root -pfit2cloud -e "create database wordpress"
	service mysqld stop
	echo "Mysql安装成功!"
fi

if [ -f /etc/init.d/httpd* ]; then
    echo "Apache已经安装!"
else
	yum groupinstall -y "Web Server" "PHP Support"
	yum install -y php-mysql
	echo "Apache安装成功!"
fi