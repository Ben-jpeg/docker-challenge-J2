# Docker Jour 1 Challenge

---

## Faire sa propre image docker et la pusher sur dockerhub

-   Créer une imfile
-   La versionage apache / PHP avec un Dockerner et la tagger correctement (image:v0.1 etc)
-   Copier dans l'image un fichier `index.php` depuis un répertoire `src` dont le seul contenu sera `phpinfo()`
-   Pusher l'image sur dockerhub (docker login
-   docker push)

### Pusher un image sur Dockerhub

docker tag laurentoclock/apache:v0.1 laurentoclock/apache-php:v0.1
docker push laurentoclock/apache-php:v0.1

## Bonus :

-   Ajouter un volume pour pouvoir modifier le fichier index.php
    en temps réel.

Il faut ajouter une option en ligne de commande pour pouvoir modifier ce fichier : le flag `-v` pour volume

Ce flag prend 1 argument composé :
Il faut spécifier le répertoire source de notre fichier et le répertoire cible

`docker run --rm -v "$PWD/src":/var/www/html -p 8080:80 bendjade/apache:v0.1`

## Résumé : comment construire une image avec docker

1. On recherche un bonne image de base
2. On crée et configure un Dockerfile
3. On compile l'image avec `docker build`
4. On exécute l'image pour crée un conteneur avec `docker run`
