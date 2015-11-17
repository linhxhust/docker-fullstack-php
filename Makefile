DOCKER_IMAGE=tanlinhnd/docker-fullstack-php
VERSION=latest

all: compose

compose:
	docker-compose up -d

build:
	docker build --no-cache=true --tag=${DOCKER_IMAGE}:${VERSION} .

restart-nginx:
	docker restart dockerfullstackphp_compose_1

stop:
	docker-compose stop