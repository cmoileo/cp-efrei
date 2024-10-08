FROM php:8.3-apache
RUN docker-php-ext-install pdo pdo_mysql
COPY www/ /var/www/html/
RUN chown -R www-data:www-data /var/www/html