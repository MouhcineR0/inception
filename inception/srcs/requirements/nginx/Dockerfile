FROM debian:bookworm

WORKDIR /app/nginx

RUN apt update
RUN apt install -y nginx openssl

RUN mkdir -p /etc/nginx/ssl && openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MO/ST=KH/L=KH/O=1337/OU=1337/CN=rboutaik.42.fr/UID=rboutaik"

COPY tools/default.conf /etc/nginx/nginx.conf

RUN apt install curl -y

CMD ["nginx", "-g", "daemon off;"]

# /etc/php/8.2/fpm/pool.d/www.conf bdlto l bach ilstni l kolchi listen = 0.0.0.0:9000