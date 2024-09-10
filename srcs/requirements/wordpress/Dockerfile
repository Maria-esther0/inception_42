 
FROM debian:bullseye

RUN apt-get update
RUN apt -y install curl
RUN apt -y install vim

RUN curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /bin/wp
RUN chmod +x /bin/wp
RUN apt-get install php php-cli php-common php-imap php-redis php-snmp php-xml php-mysqli php-zip php-mbstring php-curl libapache2-mod-php -y
RUN apt-get install php-fpm -y

WORKDIR /var/www/html

RUN mkdir /run/php

RUN sed -i 's(listen = /run/php/php7.4-fpm.sock(listen = 0.0.0.0:9000(g' /etc/php/7.4/fpm/pool.d/www.conf

COPY start_wordpress.sh /start_wordpress.sh
RUN chmod +x /start_wordpress.sh


CMD ["bash", "/start_wordpress.sh"]
