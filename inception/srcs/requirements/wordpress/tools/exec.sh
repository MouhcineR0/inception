#!/bin/bash

# apt install -y wget unzip

# cd /var/www/html

# wget https://wordpress.org/latest.zip

# unzip latest.zip

# rm latest.zip

# https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
until mysqladmin ping -h"databases" --silent; do
  sleep 1
done
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root


wp config create --dbname=wordpress --dbuser=rachid --dbpass=rachid --dbhost=databases --allow-root
wp core install --url=rmouhcin.42.fr --title="Inception" --admin_user=admin --admin_password=admin --admin_email=you@example.com --allow-root

php-fpm8.2 -F