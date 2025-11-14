#!/bin/bash

# until mysqladmin ping -h"databases" --silent; do
#   sleep 1
# done

sleep 10

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root


wp config create --dbname=wordpress --dbuser=rachid --dbpass=rachid --dbhost=databases --allow-root

wp core install --url="https://rmouhcin.42.fr" --title="inception" --admin_user=admin --admin_password=admin --admin_email=you@example.com --allow-root

wp user create rachida rachidnormal@example.com --user_pass=rachid --role=author --allow-root


php-fpm8.2 -F