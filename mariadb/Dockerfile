FROM debian:bullseye

RUN apt-get update
RUN apt-get install -y mariadb-server mariadb-client -y
# RUN apt -y install vim
RUN mkdir /run/mysqld/
RUN chmod 777 /run/mysqld/
RUN cd /etc/mysql/mariadb.conf.d/
RUN sed -i 's/bind-address            = 127.0.0.1/bind-address            = 0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

#RUN mariadbd -d

HEALTHCHECK --start-period=5m \
  CMD mariadb -e 'SELECT @@datadir;' || exit 1

COPY ./start_moidb.sh /start_moidb.sh
RUN chmod +x /start_moidb.sh
CMD ["bash", "/start_moidb.sh"]
  
EXPOSE 3306
