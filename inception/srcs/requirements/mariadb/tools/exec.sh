#!/bin/bash

echo "Initializing MariaDB..."

# Start MariaDB temporarily in the background
mysqld_safe --datadir=/var/lib/mysql &

# Wait for MariaDB to be ready
sleep 5

# Initialize database and user
mariadb -u root <<EOF
CREATE DATABASE IF NOT EXISTS wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
CREATE USER IF NOT EXISTS 'rachid'@'%' IDENTIFIED BY 'rachid';
GRANT ALL PRIVILEGES ON wordpress.* TO 'rachid'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('rachid');
FLUSH PRIVILEGES;
EOF

# Stop the temporary MariaDB process cleanly
mysqladmin -u root -prachid shutdown

# Start MariaDB as the main foreground process
exec mysqld_safe --datadir=/var/lib/mysql
