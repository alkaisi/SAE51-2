#!/bin/bash

# Variables de connexion à la base de données
DB_USER="dolibarr"
DB_PASSWORD="dolibarr"
DB_NAME="dolibarr"

# Récupérer l'adresse IP du conteneur MariaDB
DB_HOST=$(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mariadb)

# Requête SQL pour supprimer les utilisateurs sauf 'admin'
SQL_QUERY="DELETE FROM llx_user WHERE login != 'admin';"

# Exécution de la requête SQL
docker exec -i mariadb mysql -h"${DB_HOST}" -u"${DB_USER}" -p"${DB_PASSWORD}" "${DB_NAME}" <<< "${SQL_QUERY}"

