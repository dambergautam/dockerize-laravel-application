# docker-laravel -Advanced

This is advance docker setup for Laravel 5.* project for development environment.
And soon I will add production ready docker setup files.

## First-time installation
1. Clone the docker project `laravel-docker`
2. Go to project root directory `cd laravel-docker`
3. Install project `bash ./first-time-installation/install-project.sh`
4. Checkout website `http://dev.laravel:82`

---

# docker-laravel -[Version 1.0.0](https://github.com/dambergautam/laravel-docker/releases/tag/1.0.0)

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
Update `APP_URL` (APP_URL=http://dev.laravel:8080)
Set db connection type (DB_CONNECTION=mysql)
Make sure DB_HOST matched with docker service name (DB_HOST=fs_database)
Add unique db port so that it don't get conflict (DB_PORT=33061)
Set database name (DB_DATABASE=fellowship)
Set database username (DB_USERNAME=fellowship)
Set database password (DB_PASSWORD=secret)
```

Next, add dev.laravel in your /etc/hosts file.

Make sure you adjust database environment in `docker-compose.yml` same as `laravel/.env` file.

**Then, run:**

```
$ docker-compose up --build
```

Hurry!! now visit your Laravel application on the following URL: http://dev.laravel:8080
