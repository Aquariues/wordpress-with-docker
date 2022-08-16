FROM wordpress:6.0.1-fpm-alpine

COPY ./php-conf/local.ini /usr/local/etc/php/conf.d/

WORKDIR /var/www/html

RUN mkdir -p /var/www/html/wp-content/themes/xinghai

COPY ./xinghai /var/www/html/wp-content/themes/xinghai
COPY wp-config.php ./

RUN chown -R www-data:www-data ./wp-content