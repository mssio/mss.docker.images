FROM php:7.2.5-alpine
MAINTAINER Mario Suharja <mario@mss.io>

# Install dependencies
# Mcrypt, gd, xml, zip Dependencies
RUN apk --update add --no-cache freetype-dev libjpeg-turbo-dev libpng-dev libxml2-dev zlib-dev
# PHP extension
RUN docker-php-ext-install pdo_mysql bcmath json xml zip
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install gd

# Set volume
VOLUME /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

CMD ["php", "artisan", "queue:work", "--sleep=3", "--tries=3", "--daemon"]
