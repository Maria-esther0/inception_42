FROM debian:bullseye

RUN apt update
RUN apt -y install nginx
#RUN apt -y install vim
#RUN apt-get install iputils-ping -y
RUN rm /etc/nginx/sites-enabled/default
RUN apt-get install openssl -y
RUN openssl req -x509 -newkey rsa:2048 -nodes -keyout /server.key -out /server.crt -subj "/C=CH/ST=Switzerland/L=Lausanne"
RUN chmod 644 /server.key
RUN chmod 644 /server.crt

# CMD ["sleep", "infinity"]
CMD ["nginx", "-g", "daemon off;"]

#RUN nginx
COPY ./nginx.conf /etc/nginx/sites-enabled
