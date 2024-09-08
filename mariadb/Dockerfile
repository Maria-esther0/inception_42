FROM debian:bullseye

RUN apt-get update
RUN apt-get install -y mariadb-server mariadb-client -y
#RUN apt -y install vim
RUN mkdir /run/mysqld/
RUN chmod 777 /run/mysqld/

#RUN mariadbd -d

HEALTHCHECK --start-period=5m \
  CMD mariadb -e 'SELECT @@datadir;' || exit 1

EXPOSE 3306
