#!/bin/bash

echo "Creando archivo"
archivo="mytext"
texto="Hola Mundo"

echo "$texto" > "$archivo"

echo "ARchivo $archivo creado con el texto: "

cat "$archivo"
read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'

echo "Haciendo la carpeta backup"

mkdir -p "backup"

echo "Directorio creado"

read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'

echo "Copiando archivo"

sudo cp "mytext" backup/

echo "archivo copiado"

read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'

echo "Listando los archivos dentro de la carpeta  backup"

ls -l backup

read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'

echo "Eliminando el archivo $archivo dentro de backup"

rm backup/mytext

echo "Listando los archivos dentro de la carpeta  backup"

ls -l backup

read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'

echo "Borrando directorio backup"

rm -r backup

read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'
