name = inception

run :

	docker compose -f ./srcs/docker-compose.yml up -d --build

runmdb:
	docker compose -f ./srcs/docker-compose.yml exec mariadb bash

runnginx:
	docker compose -f ./srcs/docker-compose.yml exec nginx bash

runwordpress:
	docker compose -f ./srcs/docker-compose.yml exec wordpress bash

ls :
	docker compose -f ./srcs/docker-compose.yml ps -a

logs :
	docker compose -f ./srcs/docker-compose.yml logs

down :
	docker compose -f ./srcs/docker-compose.yml down

clean :
	docker compose -f ./srcs/docker-compose.yml down --volumes
	docker run --rm -v "$(HOME)/data:/pwd" busybox rm -rf /pwd/html /pwd/mysql

.PHONY = run ls down clean

#  COMMANDS:
# start la db 'wordpress': mysql -u mvillarr -p  wordpress
# install mysql: apk add mysql-client
# run mariadb: mariadbd
# mysql -u root -p
# run nginx: nginx
# CREATE USER 'mvillarr'@'localhost' IDENTIFIED BY '1234';
# CREATE DATABASE wordpress;
#afficher tous les user (mysql): SELECT user FROM mysql.user;
# GRANT ALL PRIVILEGES ON wordpress . * TO 'mvillarr'@'localhost';
# FLUSH PRIVILEGES;
#1. tourner mariadb avec, mariadbd, puis lancer mysql dans une autre console, 