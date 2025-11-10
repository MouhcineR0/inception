FROM debian:bookworm

WORKDIR /app/database

RUN apt update 
RUN apt install -y mariadb-server 
# RUN systemctl start mariadb.service

COPY tools/exec.sh tools/exec.sh
RUN chmod +x tools/exec.sh
RUN sed -i 's/^bind-address\s*=.*/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
# khasani chi tari9a khra bach nbdel lbind
RUN rm -rf index.html

CMD ["tools/exec.sh"]