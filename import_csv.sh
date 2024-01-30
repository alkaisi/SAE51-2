#!/bin/bash

# Informations de connexion à la base de données
host="mariadb"
user="dolibarr"
password="dolibarr"
database="dolibarr"

# Chemin complet du fichier CSV
fichier_csv="chemin/vers/votre/fichier.csv"

# Table dans laquelle les données seront importées
table="llx_user"

# Commande MySQL pour l'importation des données
mysql_cmd="mysql -h $host -u $user -p$password $database"

# Construction de la commande SQL pour l'importation
sql_cmd="LOAD DATA LOCAL INFILE '$fichier_csv' INTO TABLE $table FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES (firstname, lastname, email);"

# Exécution de la commande SQL
$mysql_cmd -e "$sql_cmd"

# Vérification du statut de la commande MySQL
if [ $? -eq 0 ]; then
    echo "Importation des données terminée avec succès."
else
    echo "Erreur lors de l'importation des données."
fi
