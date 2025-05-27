init:
	docker exec -it laravel_app bash -c "composer install && cp .env.example .env && php artisan key:generate && php artisan migrate --seed"
