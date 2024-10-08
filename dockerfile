FROM mysql:8.0
COPY cp.sql /docker-entrypoint-initdb.d/

FROM php:8.3-apache
RUN docker-php-ext-install pdo pdo_mysql
COPY . /var/www/html/