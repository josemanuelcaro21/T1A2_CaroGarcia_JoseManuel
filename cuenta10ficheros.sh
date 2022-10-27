#!/bin/bash

if [ $# -ge 1 ]; then  # Primero creamos un If para saber si se ha introducido un parametro.

    if [ -d $1 ]; then #Si ese parametro es un directorio.

        cont=0
        for dir in $(ls $1); do
            if [ -f $1/$dir ]; then
                let "cont++"
            fi
        done

        if [ $cont -ge 10 ]; then  #Si el contador es mayor que 10.
            echo "El directorio $1 contiene 10 o mas ficheros"
        else
            echo "El directorio $1 contiene menos de 10 ficheros regulares"
        fi
    else
        echo "El directorio $1 no existe"
        sleep 2
        exit 2
    fi
else
    echo "ERROR: No has introducido ningún parámetro"
    sleep 2
    exit 1
fi

echo "Fin del programa"
read -p "Pulse INTRO para continuar"
clear
