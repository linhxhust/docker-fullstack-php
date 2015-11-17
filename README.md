# Docker: Full Stack for PHP Developer

> Im using [php-dockerized](https://github.com/kasperisager/php-dockerized) to build this stack. Thank for Kasper Kronborg Isager

> Stack: Nginx, SQLite, MySQL, PostgreSQL, MongoDB, PHP-FPM, HHVM, Memcached, Redis and Composer

PHP FullStack gives you everything you need for developing PHP applications locally. 

## What's inside

* [Nginx](http://nginx.org/)
* [SQLite](http://www.sqlite.org/)
* [MySQL](http://www.mysql.com/)
* [PostgreSQL](http://www.postgresql.org/)
* [MongoDB](http://www.mongodb.org/)
* [PHP-FPM](http://php-fpm.org/)
* [HHVM](http://www.hhvm.com/)
* [Memcached](http://memcached.org/)
* [Redis](http://redis.io/)
* [Composer](https://getcomposer.org/)

## Requirements

* [Docker Engine](https://docs.docker.com/engine/installation/)
* [Docker Compose](https://docs.docker.com/compose/install/)

## Running

```sh
$ make
```

## Build

```sh
$ make build
```

## Add new Virtual Host

* Add domain name to /etc/hosts

```sh
$ sudo sh -c "echo '127.0.0.1 domain.dev' >> /etc/hosts"
```

* Copy source code to www. (etc: www/private/laravel)

* Copy sites/homestead.app.vhost to another vhost (etc: sites/domain.dev.vhost). Chage root and server_name option

```text
server_name domain.dev;
root        /var/www/private/laravel/public;
```

* Restart Nginx Container

```sh
$ make restart-nginx
```

## Stop

```sh
$ make stop
```

## License

Copyright &copy; 2015 [TanlinhND](http://github.com/tanlinhnd). Licensed under the terms of the [MIT license](LICENSE.md).