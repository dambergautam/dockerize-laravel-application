#!/bin/bash

# Download laravel LTS framework (https://github.com/laravel/laravel/releases)
LARAVEL_VERSION_NO="5.5.28"
curl -L https://github.com/laravel/laravel/archive/v${LARAVEL_VERSION_NO}.tar.gz | tar xz

# Rename downloaded laravel framework
mv laravel-${LARAVEL_VERSION_NO} laravel

cp laravel/.env.example laravel/.env

# Create image
docker-compose up --build -d

# Perform series of action in container
APP_NAME="laravel_php_fpm"

docker-compose exec $APP_NAME composer install

docker-compose exec $APP_NAME php artisan key:generate

docker-compose exec $APP_NAME php artisan optimize

docker-compose exec $APP_NAME node -v

docker-compose exec $APP_NAME npm install

docker-compose exec $APP_NAME npm run dev

docker-compose exec $APP_NAME vendor/bin/phpunit
