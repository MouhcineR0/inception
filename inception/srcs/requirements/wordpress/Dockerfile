FROM debian:bookworm

WORKDIR /var/www/html

RUN apt update
RUN apt-get install php8.2 php8.2-cli php8.2-common php8.2-imap php8.2-redis php8.2-snmp php8.2-xml php8.2-mysqli php8.2-zip php8.2-mbstring php8.2-curl -y
RUN apt install -y php-fpm mariadb-server 
RUN apt install -y wget unzip

# RUN cd /var/www/html

# RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar


# njreb ndiro f scipt
# RUN chmod +x wp-cli.phar
# RUN mv wp-cli.phar /usr/local/bin/wp
# RUN wp core download --allow-root


# RUN wp config create --dbname=wordpress --dbuser=rachid --dbpass=rachid --dbhost=databases --allow-root
# RUN wp core install --url=rmouhcin.42.fr --title="Inception" --admin_user=admin --admin_password=admin --admin_email=you@example.com --allow-root


# RUN unzip latest.zip

# RUN cp -r /var/www/html/wordpress/* /var/www/html

# RUN rm -rf wordpress

# RUN rm latest.zip

# COPY tools/wp-config.php /var/www/html/wp-config.php

COPY tools/exec.sh tools/exec.sh
RUN chmod +x tools/exec.sh

RUN sed -i 's|^listen = .*|listen = 0.0.0.0:9000|' /etc/php/8.2/fpm/pool.d/www.conf

CMD ["tools/exec.sh"]