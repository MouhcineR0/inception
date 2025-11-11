FROM debian:bookworm

WORKDIR /app/nginx

RUN apt update
RUN apt install -y nginx

COPY tools/default.conf /etc/nginx/nginx.conf

RUN apt install curl -y

CMD ["nginx", "-g", "daemon off;"]

# /etc/php/8.2/fpm/pool.d/www.conf bdlto l bach ilstni l kolchi listen = 0.0.0.0:9000