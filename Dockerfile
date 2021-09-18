# Puedo elegir la version de php que voy a instalar
#FROM php:7.3-apache 
# Puedo elegir la las librerias
FROM php:7-apache

RUN docker-php-ext-install pdo pdo_mysql mysqli
RUN apt-get update && apt-get install --yes --no-install-recommends \
    libssl-dev git

RUN pecl install mongodb \
    && docker-php-ext-enable mongodb

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN echo "date.timezone = America/Argentina/Buenos_Aires" > /usr/local/etc/php/php.ini
RUN echo "extension=mongo.so" >> /usr/local/etc/php/php.ini
RUN docker-php-ext-install sockets

MAINTAINER "prof.fabian.lopez@gmail.com"
LABEL description="MySQL-LAMP apache - mysql - php - mongodb - portainer"
