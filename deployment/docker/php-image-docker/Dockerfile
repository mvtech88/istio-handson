FROM php:7.2-fpm
RUN docker-php-ext-install mysqli
RUN mkdir  /var/www/myapp
COPY ./*.php ./*.html   /var/www/myapp/
