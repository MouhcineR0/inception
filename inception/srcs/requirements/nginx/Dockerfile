FROM debian:bookworm

WORKDIR /app/nginx

RUN apt update
RUN apt install -y nginx

COPY tools/nginx.conf /app/nginx/conf.d

CMD ["nginx", "-g", "daemon off;"]