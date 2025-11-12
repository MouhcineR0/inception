FROM debian:bookworm

WORKDIR /var/www/html

RUN apt update
RUN apt install -y php7.3 php-fpm php-mysql mariadb-client
RUN apt install -y mariadb-server 
RUN apt install -y wget



COPY tools/exec.sh tools/exec.sh
RUN chmod +x tools/exec.sh

RUN sed -i 's|^listen = .*|listen = 0.0.0.0:9000|' /etc/php/8.2/fpm/pool.d/www.conf

CMD ["tools/exec.sh"]