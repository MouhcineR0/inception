FROM debian:bookworm

WORKDIR /app/database

RUN apt update 
RUN apt install -y mariadb-server 
# RUN systemctl start mariadb.service

CMD ["tools/exec.sh"]