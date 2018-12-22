FROM php:7.1-apache

# Install common tools and libraries
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    zip \
    unzip \
    vim \
    openssl \
    libz-dev \
    libjpeg-dev \
    libmcrypt-dev \
    autoconf \
    file \
    g++ \
    gcc

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
&& docker-php-ext-install mcrypt pdo pdo_mysql mysqli

# Install composer
RUN curl -sS https://getcomposer.org/installer | \
php -- --install-dir=/usr/local/bin --filename=composer

ADD config/000-default.conf /etc/apache2/sites-enabled/000-default.conf
COPY config/php.ini /usr/local/etc/php/conf.d/custom.ini

WORKDIR /var/www/html
