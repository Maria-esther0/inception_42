FROM debian:bullseye

RUN apt update
RUN apt -y install nginx
#RUN apt -y install vim
#RUN apt-get install iputils-ping -y
RUN rm /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]

#RUN nginx
COPY ./nginx.conf /etc/nginx/sites-enabled
