FROM debian:bookworm

WORKDIR /app/database

RUN apt update 
RUN apt install -y mariadb-server 
# RUN systemctl start mariadb.service

COPY tools/exec.sh tools/exec.sh
RUN chmod +x tools/exec.sh

CMD ["tools/exec.sh"]