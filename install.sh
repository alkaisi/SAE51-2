#!/bin/bash

# Install package & command
./config.sh

clear

# Execute Docker-compose
docker-compose up -d

# Show conteners
docker ps

# Sleeptime
echo -e "\nVeuillez attendre !"

./delete_users.sh

sleep 30

# phpmyadmin's interface
firefox localhost:8080 &

# Dolibarr's interface
firefox localhost:8200 &






