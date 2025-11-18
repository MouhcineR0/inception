FROM debian:bookworm

WORKDIR /app/database

RUN apt update 
RUN apt install -y mariadb-server

COPY tools/exec.sh tools/exec.sh
RUN chmod +x tools/exec.sh
RUN sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

RUN rm -rf index.html

ENTRYPOINT ["tools/exec.sh"]