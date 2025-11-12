#!/bin/bash

echo "rachid mouhcine"

service mariadb start

# while ! mariadb ping --silent; do
sleep 5
# done

mariadb << limiter
CREATE DATABASE IF NOT EXISTS wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpress.* TO 'rachid'@'%' IDENTIFIED BY 'rachid';
ALTER USER 'root'@'localhost' IDENTIFIED VIA mysql_native_password;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'rachid';
FLUSH PRIVILEGES;
EXIT
limiter

mysqladmin -u root -prachid shutdown

service mariadb stop

exec mysqld_safe