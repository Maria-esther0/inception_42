mariadbd &

sleep 5;

mysql -u root -e "CREATE USER 'user_name'@'%' IDENTIFIED BY 'user_pass';"
mysql -u root -e "CREATE DATABASE db_name;"
mysql -u root -e "GRANT ALL PRIVILEGES ON db_name . * TO 'user_name'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"

pkill mariadbd

sleep 5;

mariadbd 