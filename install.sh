#!/bin/bash

# Delete conteners
docker rm --force $(docker ps -aq)

# Delete images
# docker rmi $(docker images)

clear

# Install package & command
./config.sh

clear

# Execute Docker-compose
docker-compose up -d

# Show conteners
docker ps

# IP mysql
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mariadb

# Sleeptime
echo -e "\nVeuillez attendre !"
sleep 25

# firefox $(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' dolibarr-container)

# phpmyadmin's interface
firefox localhost:8080 &

# Dolibarr's interface
firefox localhost:8200 &





