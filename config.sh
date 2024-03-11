#!/bin/bash

# Mise à jour des paquets
sudo apt update
sudo apt upgrade -y

# Installation de curl
sudo apt install -y curl

# Installation de pluma (éditeur de texte par défaut sur les systèmes basés sur GNOME)
sudo apt install -y pluma

# Installation de MySQL au lieu de MariaDB
sudo apt install -y default-mysql-server default-mysql-client

# Installation de Docker & Docker Compose
sudo apt install -y docker docker-compose

# Ajout de l'utilisateur actuel au groupe docker pour éviter l'utilisation de sudo
sudo usermod -aG docker $USER

# Installation des paquets nécessaires pour Dolibarr
sudo apt install -y apache2 libapache2-mod-php php php-mysql php-gd php-curl php-xml php-json php-zip php-mbstring
sudo apt -y install php php-cgi php-mysqli php-pear php-mbstring libapache2-mod-php php-common php-phpseclib php-mysql

# Installation de Python et pip
sudo apt install -y python3 python3-pip

# Installation des dépendances Python pour Dolibarr (facultatif, dépend du script d'installation)
pip3 install requests

# Install Git
sudo apt install git

# Install faker
sudo apt install -y faker

# Install Samba
sudo apt-get install samba
sudo service smbd restart

mkdir -p /home/user/backup


