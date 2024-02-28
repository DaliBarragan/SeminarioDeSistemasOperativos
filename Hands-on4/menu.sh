#!/bin/bash

while true; do
    # Mostrar el menú de opciones
    echo "1. Listar el contenido de un fichero (carpeta)"
    echo "2. Crear un archivo de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Usar el comando awk"
    echo "5. Usar el comando grep"
    echo "6. Salir"

    # Leer la opción del usuario
    read -p "Seleccione una opción (1-6): " opcion

    case $opcion in
        1)
            # Listar el contenido de un fichero (carpeta)
            read -p "Ingrese la ruta absoluta al fichero o carpeta: " ruta
            ls "$ruta"
            ;;
        2)
            # Crear un archivo de texto
            read -p "Ingrese la cadena de texto para almacenar en el archivo: " texto
            echo "$texto" > nuevo_archivo.txt
            echo "Archivo creado: nuevo_archivo.txt"
            ;;
        3)
            # Comparar dos archivos de texto
            read -p "Ingrese el primer archivo: " archivo1
            read -p "Ingrese el segundo archivo: " archivo2
            diff "$archivo1" "$archivo2"
            ;;
        4)
            # Usar el comando awk
            echo "Ejemplo de uso de awk:"
            echo "Contar líneas en un archivo:"
            read -p "Ingrese la ruta al archivo: " archivo
            awk 'END {print NR}' "$archivo"
            ;;
        5)
            # Usar el comando grep
            echo "Ejemplo de uso de grep:"
            echo "Buscar una cadena en un archivo:"
            read -p "Ingrese la cadena a buscar: " cadena
            read -p "Ingrese la ruta al archivo: " archivo
            grep "$cadena" "$archivo"
            ;;
        6)
            # Salir del script
            echo "Saliendo del script."
            exit 0
            ;;
        *)
            # Opción inválida
            echo "Opción inválida. Por favor, seleccione una opción válida."
            ;;
    esac
done
