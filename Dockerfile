FROM php:8.1-apache

RUN apt update
ENV DEBIAN_FRONTEND=noninteractive

RUN apt install -y apache2

COPY html /var/www/html/

### DEEL 2: extra details voor bij het RUNNEN van een CONTAINER
WORKDIR /var/www/html/
# Directory waar je terecht komt als je inlogt op een draaiende container

EXPOSE 80/tcp


CMD service apache2 start && bash

