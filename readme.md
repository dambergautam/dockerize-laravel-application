# Dockerize Your Laravel Application

## First time?
**Tools:** `PHP 7.1`, `Apache`, `MySQL`

Well, let's try with very simple setup then;

- Switch to [tag 1.0.0](https://github.com/dambergautam/dockerize-laravel-application.git) to view setup instructions.
- Download [Source code (v1.0.0)](https://github.com/dambergautam/dockerize-laravel-application/releases/tag/1.0.0) to try it yourself.

## Done! Next?
**Tools:** `PHP-FPM 7.1`, `Nginx`, `MySQL`

Now, let's switch back to `master` branch. This repo contain bash script `./bin/install.sh` which will automate our manual work of downloading fresh laravel framework, setting up laravel `.env` file, and installing Composer and NPM dependencies.

### First time installation guide
1. Clone the docker project `laravel-docker`
2. Go to project root directory `cd laravel-docker`
3. Install project `bash ./bin/install.sh`
4. Checkout website `http://localhost:82`

**Note:** Make sure to update `laravel/.env` file to add database credentials (see `docker-compose.yml`).

### In case you don't know
To run stopped containers use below command from root directory-

```
docker-compose up
```

To rebuild containers use below command from root directory-

```
docker-compose up --build
```

To run docker container in detach mode add a flag `-d`

```
eg. docker-compose up -d
```
