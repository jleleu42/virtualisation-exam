FROM php:7.1-fpm

# install the PHP extensions we need
RUN docker-php-ext-install pdo pdo_mysql mysqli && docker-php-ext-enable mysqli

WORKDIR /var/www/html