#!/bin/bash

# Challenge 03 - Dockers
# Lab01
# Parte 2

# Paso por paso como ejecutar un par de contenedores de MySQL y de PHPMyAdmin que estén conectados entre si

echo "------------------------------ Inicio del Script --------------------------------"
V_IMAGE_SQL=$1
V_IMAGE_PHP=$2
V_PASS=$3

echo " "
echo "*************** Se ejecuta la imagen: $V_IMAGE_SQL *********************"
docker run --name=db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=$V_PASS -d $V_IMAGE_SQL

echo " "
echo "*************** Se ejecuta el LOG de: $V_IMAGE_SQL *********************"
docker logs db

echo " "
echo "***************** Se ejecuta la imagen: $V_IMAGE_PHP  ******************"
docker run --name=my-admin -p 82:80 --link db:db -d $V_IMAGE_PHP

echo " "
echo "********************* Se revisan los contenedores  *********************"
docker ps

echo " "
echo "*************** Se ejecuta el contenedor: $V_IMAGE_SQL  ****************"
docker exec -it db bash

echo " "
echo "------------------------------- Fin del script ----------------------------------"
