FROM php:latest
RUN docker-php-ext-install pdo pdo_mysql \
&& a2enmod rewrite
COPY . /var/www/html/
COPY cp.sql /docker-entrypoint-initdb.d/
EXPOSE 80
CMD ["apache2-foreground"]