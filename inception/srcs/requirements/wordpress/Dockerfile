FROM debian:bookworm

WORKDIR /var/www/html

RUN apt update
RUN apt-get install php8.2 php8.2-cli php8.2-common php8.2-imap php8.2-redis php8.2-snmp php8.2-xml php8.2-mysqli php8.2-zip php8.2-mbstring php8.2-curl libapache2-mod-php -y
RUN apt install -y php-fpm
RUN apt install -y wget unzip

# RUN cd /var/www/html

RUN wget https://wordpress.org/latest.zip

RUN unzip latest.zip

RUN cp -r /var/www/html/wordpress/* /var/www/html

RUN rm -rf wordpress

RUN rm latest.zip

RUN rm -rf index.html

RUN sed -i 's|^listen = .*|listen = 9000|' /etc/php/8.2/fpm/pool.d/www.conf
RUN sed -i 's|^;listen.allowed_clients =.*|listen.allowed_clients = 0.0.0.0/0|' /etc/php/8.2/fpm/pool.d/www.conf


# COPY tools/exec.sh tools/exec.sh
# RUN chmod +x tools/exec.sh


CMD ["php-fpm8.2", "-F"]