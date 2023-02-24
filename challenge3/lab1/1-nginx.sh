#!/bin/bash

# Challenge 03 - Dockers
# Lab01
# Parte 1

# Go to Docker Hub y busque la imagen de Nginx. Descarga la version 1.22.1

echo "---------------------- Inicio del Script -----------------------"
V_IMAGE=$1

echo " "
echo "*************** Descarga de la imagen: $V_IMAGE ***************"
docker pull $V_IMAGE

echo " "
echo "*************** Se ejecuta la imagen: $V_IMAGE ****************"
docker run -d --name nginx-web -p 8080:80 $V_IMAGE

echo " "
echo "************** Verificamos imagen y contenedor ****************"
docker images

echo " "
docker ps

echo " "
echo "----------------------- Fin del script -------------------------"
