#!/bin/bash
mysqlInstalled=`service mysqld status | grep unrecognized | wc -l`
if [ "x$mysqlInstalled" == "x1" ];then
	yum install -y mysql-server	
	service mysqld start
	mysqladmin -u root password 'fit2cloud'
	mysql -u root -pfit2cloud -e "create database wordpress"
	service mysqld stop
else
    echo "Mysql已经安装"
fi

apacheInstalled=`service httpd status | grep unrecognized | wc -l`
if [ "x$apacheInstalled" == "x1" ];then
	yum groupinstall -y "Web Server" "PHP Support"
	yum install -y php-mysql
else
    echo "Apache已经安装"
fi