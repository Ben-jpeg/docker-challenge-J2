# On démarre de cette image
FROM php:8.1-apache
# Si les répertoires /var, /var/www, et /var/www/html n'existe pas, on les créé
# Le flaf `p` sert à créer les répertoires s'ils n'existent pas
# On vérifie si /var existe, s'il existe pas on le créé etc etc
RUN mkdir -p /var/www/html
# On spécifie qie notre répertoire de travail est /var/www/html, quand on se connecte au conteneur,
# on sera connecté directement danss ce répertoire de travail.
# Chaque commande qui agira sur le conteneur sera exécuté dans ce répertoire
WORKDIR /var/www/html
# On copy un fichier local sur l'image
# Depui le répertoir src jusqu'au répertoire /var/www/html
COPY src/index.php /var/www/html/index.php

# Si on voulait modifier la config du VirtualHost par défaut
# COPY src/000-default.conf /etc/apache2/sites-available/000-default.conf

# compiler image avec le tag correct :

# docker build . -t dockerhubusername/apache:v0.1