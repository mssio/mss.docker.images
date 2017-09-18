FROM php:7.1.8-fpm-alpine
MAINTAINER Mario Suharja <mario@mss.io>

# Install dependencies
# Mcrypt, gd, xml, zip Dependencies
RUN apk --update add --no-cache libmcrypt-dev libjpeg-turbo-dev libpng-dev libxml2-dev zlib-dev
# PHP extension
RUN docker-php-ext-install pdo_mysql bcmath json mcrypt gd xml zip

# Setup SourceGuardian
COPY ixed.7.1.lin /usr/local/lib/php/extensions/no-debug-non-zts-20160303/ixed.7.1.lin
# Enable SourceGuardian
COPY sg.ini /usr/local/etc/php/conf.d/sg.ini

# Fix upload max size
COPY php.ini /usr/local/etc/php/

# Set volume
VOLUME /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
