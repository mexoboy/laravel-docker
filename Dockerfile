FROM php:7.2-fpm-alpine

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN apk add --no-cache \
    libzip-dev \
    postgresql-dev \
 && docker-php-ext-install \
    bcmath \
    pdo_pgsql \
    zip
