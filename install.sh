#!/bin/bash

# Delete conteners
docker rm --force $(docker ps -aq)

# Delete images
docker rmi $(docker images)

clear

# Install package & command
./config.sh

# Dockerfile1 (mariadb)
docker build -t my-mariadb -f Dockerfile1 .

# Execute mariadb
docker run -d --name mariadb-container my-mariadb

# Dockerfile2 (dolibarr)
docker build -t my-dolibarr -f Dockerfile2 .

# Execute dolibarr
docker run -d --name dolibarr-container --link mariadb-container:mariadb -p 8200:80 my-dolibarr

# Show conteners
docker ps

# Dolibarr's interface
firefox $(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' dolibarr-container)


