chmod 777 /var/lib/mysql
chown -R mysql:mysql /var/lib/mysql
mysql_install_db --user=mysql --ldata=/var/lib/mysql

mariadbd &

sleep 5;

mysql -u root -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWORD';"
mysql -u root -e "CREATE DATABASE $DB_DATABASE;"
mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_DATABASE . * TO '$DB_USER'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"

pkill mariadbd

sleep 5;

mariadbd 