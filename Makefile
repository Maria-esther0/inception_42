name = inception

run :

	docker compose up -d --build

runmdb:
	docker compose exec mariadb bash

runnginx:
	docker compose exec nginx bash

ls :
	docker compose ps -a

down :
	docker compose down

clean :
	docker compose down --volumes

.PHONY = run ls down clean

