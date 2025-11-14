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

wp core install --url="https://138.197.206.36" --title="Inception" --admin_user=rmouhcin --admin_password=rmouhcin00 --admin_email=rmouhcin@1337.com --allow-root

wp user create rachidd rachidd@1337.com --user_pass=rachidd --role=author --allow-root


php-fpm8.2 -F