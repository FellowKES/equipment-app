FROM laravelsail/php83-composer

WORKDIR /var/www/html

COPY . .

RUN apt-get update && apt-get install -y libpq-dev unzip && docker-php-ext-install pdo pdo_pgsql
