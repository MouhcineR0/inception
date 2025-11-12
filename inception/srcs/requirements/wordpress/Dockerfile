FROM debian:bookworm

WORKDIR /var/www/html

RUN apt update \
	&& apt install -y \
		php-fpm \
		php-mysql \
		mariadb-client \
		wget \
		unzip \
	&& rm -rf /var/lib/apt/lists/*

# Ensure PHP-FPM listens on TCP 9000 for nginx to reach it over the Docker network
RUN sed -i 's|^listen = .*|listen = 0.0.0.0:9000|' /etc/php/8.2/fpm/pool.d/www.conf

COPY tools/exec.sh tools/exec.sh
RUN chmod +x tools/exec.sh

# Run PHP-FPM in the foreground after WordPress setup
CMD ["tools/exec.sh"]