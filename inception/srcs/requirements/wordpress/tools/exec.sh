#!/bin/bash

until mysqladmin ping -h"databases" --silent; do
  sleep 1
done

sleep 10

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download --allow-root


wp config create --dbname=wordpress --dbuser=rachid --dbpass=rachid --dbhost=databases --allow-root

wp core install --url="localhost" --title="Inception" --admin_user=admin --admin_password=admin --admin_email=you@example.com --allow-root

wp user create rachida regular_user@example.com --user_pass=rachida --role=author --allow-root

wp option update home "https://localhost" --allow-root
wp option update siteurl "https://localhost" --allow-root

php-fpm8.2 -F