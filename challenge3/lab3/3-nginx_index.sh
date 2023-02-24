#!/bin/bash

# Challenge 03 - Dockers
# Lab03
# Servidor Nginx

echo "------------------------------ Inicio del Script --------------------------------"
V_IMAGE=$1
V_NAME=$2


echo " "
echo "*************** Se ejecuta la imagen: $V_IMAGE ************************"
docker run -d --name $V_NAME -p 9999:80 $V_IMAGE

echo " "
echo "*************** Se copia contenido de INDEX.HTML  *********************"
docker cp index.html $V_NAME:/usr/share/nginx/html

echo " "
echo "*************** Se ejecuta el contenedor: $V_NAME  ********************"
docker exec -it $V_NAME ls /usr/share/nginx/html

echo " "
echo "------------------------------- Fin del script ----------------------------------"

