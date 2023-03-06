FROM php:8.0-apache
WORKDIR /var/www/html
COPY .htaccess .htaccess
COPY compile.php compile.php
COPY index.php index.php
RUN a2enmod headers && chmod -R 777 index.php && chmod -R 777 compile.php
EXPOSE 5000

