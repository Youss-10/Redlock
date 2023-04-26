FROM php:8.1.10-apache AS php-apache
COPY /html/ /var/www/html

RUN apt-get update -y
RUN docker-php-ext-install mysqli

RUN chown -R www-data:www-data /var/www/html/ && chmod -R 774 /var/www/html/

FROM mysql:latest AS mysql
COPY redlock-db.sql /docker-entrypoint-initdb.d/

ENV MYSQL_ROOT_PASSWORD=toor
ENV MYSQL_USER=resu
ENV MYSQL_PASSWORD=password
