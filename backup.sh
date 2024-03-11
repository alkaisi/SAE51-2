#!/bin/bash

# Récupération de la date pour inclure dans le nom du fichier de sauvegarde
current_date=$(date +"%Y-%m-%d")

# Effectuer la sauvegarde de la base de données
mysqldump --no-tablespaces -h 172.20.0.2 -u dolibarr -P 3306 -pdolibarr dolibarr > "/home/user/backup/backup_$current_date.sql"
