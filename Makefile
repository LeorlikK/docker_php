bash:
	docker-compose exec app bash

up:
	docker-compose -f docker-compose.yml up -d

down:
	docker-compose -f docker-compose.yml down

restart:
	make down
	make up

ps:
	docker ps

composer-install:
	docker-compose exec app composer install

composer-update:
	docker-compose exec app composer update

docker-clear:
	docker container prune -f
	docker system prune -af
	docker volume prune -af
	docker image prune -af
	docker builder prune -af

seed:
	docker-compose exec app php artisan db:seed

key-generate:
	docker-compose exec app php artisan key:generate

fresh-migrate:
	docker-compose exec app php artisan migrate:fresh

refresh-migrate:
	docker-compose exec app php artisan migrate:refresh

reset-migrate:
	docker-compose exec app php artisan migrate:reset

migrate:
	docker-compose exec app php artisan migrate

update-database:
	make fresh-migrate
	make seed

php-modules:
	docker-compose exec app php -m


