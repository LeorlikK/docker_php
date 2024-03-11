FROM php:8.3-cli

RUN apt-get update && apt-get install -y \
    libpq-dev \
    zip \
    && docker-php-ext-install pdo_mysql pdo_pgsql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#COPY ./_docker/php/cli/php.ini /usr/local/etc/php/conf.d/php.ini

RUN curl -sS https://getcomposer.org/installer | php -- \
                --install-dir=/usr/local/bin \
                --filename=composer \

WORKDIR /var/www/public/

#CMD ["php", "index.php"]

