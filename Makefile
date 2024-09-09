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

down :
	docker compose down

clean :
	docker compose down --volumes

.PHONY = run ls down clean

#  COMMANDS:
# start la db 'wordpress': mysql -u mvillarr -p  wordpress
# install mysql: apk add mysql-client
# run mariadb: mariadbd
# mysql -u root -p
# run nginx: nginx
# CREATE DATABASE wordpress;
# GRANT ALL PRIVILEGES ON wordpress . * TO 'mvillarr'@'localhost';
# CREATE USER 'mvillarr'@'localhost' IDENTIFIED BY '1234';
# FLUSH PRIVILEGES;