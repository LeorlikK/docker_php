FROM php:8.3-fpm

RUN apt-get update && apt-get install -y \
    apt-utils \
    libpq-dev \
    libpng-dev \
    libzip-dev \
    zip unzip \
    cron \
    supervisor \
    git \
    build-essential \
    locales \
    libonig-dev \
    libjpeg-dev \
    libfreetype6-dev \
    curl \
    vim \
    procps \
    net-tools \
    libxml2-dev \
    && docker-php-ext-install pdo_mysql pdo_pgsql bcmath gd zip \
#    && && docker-php-ext-enable \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
#    && apt-get purge -y libzip-dev libpq-dev

#COPY ./_docker/php/fpm/php.ini /usr/local/etc/php/conf.d/php.ini

RUN  curl -sS https://getcomposer.org/installer | php -- \
                --install-dir=/usr/local/bin \
                --filename=composer \

WORKDIR /var/www/public/

#CMD ["php", "index.php"]