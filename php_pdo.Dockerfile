FROM php:7.1-fpm

# install the PHP extensions we need
RUN apt-get update
RUN apt-get install -y libpng-dev

RUN docker-php-ext-install pdo pdo_mysql mysqli gd && docker-php-ext-enable mysqli

WORKDIR /var/www/html