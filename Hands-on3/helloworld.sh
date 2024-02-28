#!/bin/bash
echo "Hello World"

read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'

echo '\nLista de los directorios actuales'
ls -l 

read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'

echo "Haciendo la carpeta Test"

mkdir "Test"

echo "Directorio creado"

read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'

echo "Cambiando a la carpeta test"
cd Test

read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'

echo "Lista del directorio Test"
ls -l

read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'

echo "Fin de la ejecucion sh"
read -n 1 -s -r -p $'\nPresiona cualquier tecla par continuar\b'


