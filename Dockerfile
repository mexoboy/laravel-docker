FROM php:7.4-fpm-alpine

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

RUN apk add --no-cache \
    libzip-dev \
    postgresql-dev \
 && docker-php-ext-install \
    bcmath \
    pdo_pgsql \
    zip \
 && composer global require hirak/prestissimo
