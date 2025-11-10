#!/bin/bash

echo "rachid mouhcine"

service mariadb start

while ! mysqladmin ping --silent; do
	sleep 1
done

mysql << limiter
CREATE DATABASE IF NOT EXISTS wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpress.* TO 'rachid'@'%' IDENTIFIED BY 'rachid';
ALTER USER 'root'@'localhost' IDENTIFIED VIA mysql_native_password;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'rachid';
FLUSH PRIVILEGES;
EXIT
limiter

mysqladmin -u root -prachid shutdown

mysqladmin -u root shutdown

exec mysqld_safe