#!/bin/bash
if [ "$#" -eq "0" ]; then
    echo "No has introducido un parametro"   #Comprobamos que se ha introducido un parametro.
else
    if [[ "$#" -gt "1" ]]; then
        echo "Debes introducir como máximo un parámetro"    #Comprobamos que se ha introducido un parametro como maximo.
    else
        if [ -d "$1" ]; then
            echo "El directorio ${1} que ha introducido existe"   #Si existe el directorio hacemos una copia de el con el formato deseado.
            tar cvf copia_scripts_$(date +%d%m%Y).tar $1
        else
            echo "El directorio ${1} que ha introducido no existe"
            exit
        fi
    fi
fi
