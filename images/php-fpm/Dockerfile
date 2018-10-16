FROM php:7.2.11-fpm-alpine
MAINTAINER Mario Suharja <mario@mss.io>

# Install dependencies
# Mcrypt, gd, xml, zip Dependencies
RUN apk --update add --no-cache freetype-dev libjpeg-turbo-dev libpng-dev libxml2-dev zlib-dev
# PHP extension
RUN docker-php-ext-install pdo_mysql bcmath json xml zip
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

# Setup xdebug
RUN apk --update add --no-cache --virtual build-xdebug autoconf gcc g++ make \
  && pecl install xdebug-2.6.0beta1 \
  && apk del build-xdebug
# Enable xdebug
COPY xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini

# Fix upload max size
COPY php.ini /usr/local/etc/php/

# Set volume
VOLUME /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
