#!/bin/bash

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp

wp core download --allow-root

wp config create --dbname=$WP_DB_NAME --dbuser=$WP_DB_USER --dbpass=$WP_DB_PASSWORD --dbhost=$WP_DB_HOST --allow-root

wp core install --url="$WP_URL" --title="Inception" --admin_user=$WP_ADMIN_USER --admin_password=$WP_ADMIN_PW --admin_email=$WP_ADMIN_EMAIL --allow-root

wp user create $WP_AUTHOR_USER $WP_AUTHOR_EMAIL --user_pass=$WP_AUTHOR_PW --role=author --allow-root


php-fpm8.2 -F