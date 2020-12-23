FROM luckykenlin/php:latest

ADD ./php/www.conf /usr/local/etc/php-fpm.d/www.conf
ADD ./php/php.ini /usr/local/etc/php

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

RUN mkdir -p /var/www/html

RUN chown laravel:laravel /var/www/html

WORKDIR /var/www/html