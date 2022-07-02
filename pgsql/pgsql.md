## Installation de PostgreSQL

1. [x] **Installer et configurer Postgress**

    1. [x] `sudo apt install postgresql postegresql-contrib`
    2. [x] `sudo service postgresql status` pour être sûr que postgres est actif.
    3. [x] Faire la commande `psql --version` **_et se souvenir de la version_**.
    4. [x] Connection au système d'exploitation en tant que postgres : `sudo -i -u postgres`, mac : `sudo su postgres`
    5. [x] `psql` pour se connecter en tant que postgres au serveur postgressql, postgres étant le SU du serveur, on va avoir la main sur ce serveur.
           On peut faire les deux commandes en une fois : `sudo -i -u postgres psql`
    6. [x] Faire des commandes de base :
        1. [x] `\l` pour lister les BDD.
        2. [x] `\du` pour lister les utilisateurs ou rôles existants. (On en a qu'un, on en créera un plus tard)
        3. [x] `\dt` pour lister les tables de la base de données qu'on utilise maintenant. variante : `\dt *.*`
        4. [x] `\dn+` pour regarder ce qu'on a comme permissions. Utile pour la suite si problèmes création User.
    7. [x] Configurez postgres avec User et une DB.
        1. [x] `CREATE ROLE <votre username> WITH LOGIN PASSWORD 'password' CREATEDB;` username ce que vous voulez, évidemment remplacez password par un truc un peu mieux. Ne surtout pas oublier le point virgule pour chaque commandes sinon elles ne seront pas exécuter. Ensuite refaire les commandes précédentes et qq commandes SQL vite fait.
        2. [x] Tester `ALTER ROLE <votre username> WITH LOGIN PASSWORD 'password';` **Changer le username et password**
        3. [x] Créer une base de données : `CREATE DATABASE <nom de la BDD> OWNER <votre username>;` **Changer le username**
        4. [x] Modifier le ficher `/etc/postgresql/VERSION/main/pg_hba.conf`, trouver la ligne `local all all peer` et chnager ça en `local all all md5`, ensuite taper `sudo service postgresql restart`. Le but de cette opération est pouvoir se connecter plus simplement à PostgreSQL avec un mot de passe.
        5. [x] Dans un nouveau terminal, on refait la commande `ssh student@username-server.eddi.cloud` et ensuite on se connecte à cette nouvelle BDD en tant que username `psql -U <votre username> -d <nom de la BDD>`.
               **Et la les ennuis commencent : Avez vous refait la commande `ssh` ?**
        6. [x] La base de données est créée, l'utilisateur aussi, on peut travailler.


## Les bases de PostgreSQL

1. [x] Se connecter à la BDD
    1. [x] `sudo -i -u postgres`
    2. [x] `psql`
2. [x] Création d'un utilisateur de la BDD
    1. [x] `CREATE ROLE uisername WITH LOGIN PASSWORD 'passwdord';`
3. [x] Création de BDD et Assigner un utilisateur à une BDD
    1. [x] `CREATE DATABASE test OWNER username;`
4. [x] Explication des types de données pour créer une table. On retrouve ce qu'on utilise déjà avec les langages JS et PHP:
    - CHAR
    - VARCHAR
    - BOOLEAN
    - INTEGER
    - DOUBLE
5. [x] Création de tables
6. [x] CRUD de base.
