# docker-laravel

This is just a quick note for self to up and run Laravel project with Docker.

## Installation

**First, clone this repository:**

```
git clone https://github.com/dambergautam/laravel-docker.git laravel-docker
```

**Add fresh Laravel 5.5 project**

```
cd laravel-docker
git clone https://github.com/laravel/laravel/archive/5.5.zip
unzip 5.5.zip
mv 5.5 laravel
```

**Setup laravel project**

```
cd laravel-docker/laravel

# Add env file
cp .env.example .env

# Adjust your environment variables
Generate `APP_KEY`
Update `APP_URL` (APP_URL=http://laravel.dev:8080)
Set db connection type (DB_CONNECTION=mysql)
Make sure DB_HOST matched with docker service name (DB_HOST=fs_database)
Add unique db port so that it don't get conflict (DB_PORT=33061)
Set database name (DB_DATABASE=fellowship)
Set database username (DB_USERNAME=fellowship)
Set database password (DB_PASSWORD=secret)
```

Next, add laravel.dev in your /etc/hosts file.

Make sure you adjust database environment in `docker-compose.yml` same as `laravel/.env` file.

**Then, run:**

```
$ docker-compose up --build
```

Hurry!! now visit your Laravel application on the following URL: http://laravel.dev:8080
