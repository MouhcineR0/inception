FROM debian:bookworm

WORKDIR /var/www/html

RUN apt update
RUN apt-get install php8.2 php8.2-cli php8.2-common php8.2-imap php8.2-redis php8.2-snmp php8.2-xml php8.2-mysqli php8.2-zip php8.2-mbstring php8.2-curl -y
RUN apt install -y php-fpm
RUN apt install -y wget unzip

# RUN cd /var/www/html

RUN wget https://wordpress.org/latest.zip

RUN unzip latest.zip

RUN cp -r /var/www/html/wordpress/* /var/www/html

RUN rm -rf wordpress

RUN rm latest.zip

COPY tools/wp-config.php /var/www/html/wp-config.php

RUN sed -i 's|^listen = .*|listen = 0.0.0.0:9000|' /etc/php/8.2/fpm/pool.d/www.conf


CMD ["php-fpm8.2", "-F"]