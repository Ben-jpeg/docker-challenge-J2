# On démarre de cette image
FROM php:8.1-apache

RUN addgroup teacher

## Le répertoire qui reçoit les requetes dans laravel est le répertoire public
# Donc on crée ce répertoire public, pour pouvoir configurer apache en conséquence
# Sinon la configuration apache ne fonctionnera pas.
RUN mkdir -p /var/www/html/public

WORKDIR /var/www/html/public

COPY apache/000-default.conf /etc/apache2/sites-available/000-default.conf

COPY src/index.php /var/www/html/public/index.php

RUN apt-get update

# On installer ces deux paquet pour que l'extension pgsql de PHP puisse
# être installé à l'étape suivante.
RUN apt-get install -y postgresql libpq-dev

# Installation des extensions PHP requises pour ls BDD
RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql

CMD ["apache2-foreground"]