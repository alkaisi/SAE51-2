#!/bin/bash

# Delete conteners
docker rm --force $(docker ps -aq)

# Delete images
docker rmi $(docker images)

clear

# Install package & command
./config.sh

clear

# Execute Docker-compose
docker-compose up -d

# Show conteners
docker ps

# Sleeptime
sleep 10

# Dolibarr's interface
# firefox $(docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' dolibarr-container)
firefox localhost:8200


