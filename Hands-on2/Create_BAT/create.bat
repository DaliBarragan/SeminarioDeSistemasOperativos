@echo off

cls
echo Crear un archivo de texto llamado mytext.txt y agregar la cadena "Hola Mundo"
echo Hola Mundo > mytext.txt
pause


cls
echo Desplegar/Imprimir el contenido del archivo mytext.txt
echo Contenido de mytext.txt:
type mytext.txt
echo.
pause


cls
echo Crear un subdirectorio llamado backup
mkdir backup
pause


cls
echo Copiar el archivo mytext.txt al subdirectorio backup
copy mytext.txt backup
pause


cls
echo Contenido del subdirectorio backup:
dir backup
echo.
pause


cls
echo Eliminar el archivo mytext.txt del subdirectorio backup
del backup\mytext.txt
pause


cls
echo Eliminar el subdirectorio backup
rmdir backup /s 
rem /s para borrar todo
pause


cls
echo Batch script completado.
pause