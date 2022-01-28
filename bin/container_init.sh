#!/bin/bash
docker-compose up -d --build

docker-compose exec app python manage.py flush --no-input
docker-compose exec app python manage.py makemigrations
docker-compose exec app python manage.py migrate

docker-compose exec app python manage.py collectstatic --no-input --clear
