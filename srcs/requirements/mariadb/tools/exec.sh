#!/bin/bash

service mariadb start

sleep 5

mariadb << limiter
CREATE DATABASE IF NOT EXISTS $WP_DB_NAME DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON wordpress.* TO '$WP_DB_USER'@'%' IDENTIFIED BY '$WP_DB_PASSWORD';
ALTER USER '$DB_ROOT_USER'@'localhost' IDENTIFIED BY '$DB_ROOT_PW';
FLUSH PRIVILEGES;
EXIT
limiter

mysqladmin -u $DB_ROOT_USER -p$DB_ROOT_PW shutdown
	
service mariadb stop

exec mysqld_safe