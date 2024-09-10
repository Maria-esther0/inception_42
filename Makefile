name = inception

run :

	docker compose up -d --build

runmdb:
	docker compose exec mariadb bash

runnginx:
	docker compose exec nginx bash

runwordpress:
	docker compose exec wordpress bash

ls :
	docker compose ps -a

logs :
	docker compose logs

down :
	docker compose down

clean :
	docker compose down --volumes
	docker run --rm -v "~/Desktop:/pwd" busybox rm -rf /pwd/html /pwd/mysql

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