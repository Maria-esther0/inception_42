sleep 15;

cd /var/www/html

wp core download --allow-root

wp config create --dbhost=$DB_HOST --dbname=$DB_DATABASE --dbuser=$DB_USER --dbpass=$DB_PASSWORD --allow-root

wp core install --url=$URL_LOCAL_PORT --title=$TITRE_SITE --admin_user=$ADMIN_USER --admin_password=$ADMIN_PASSWORD --admin_email=$ADMIN_EMAIL --allow-root

wp user create $USER $USER_EMAIL --user_pass=$USER_PASSWORD --allow-root 

# sleep infinity
php-fpm7.4 -F
