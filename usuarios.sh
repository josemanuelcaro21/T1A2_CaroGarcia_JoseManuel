#!/bin/bash
function usuario2 {
    if id "$usuariodos" >>usuaejerci.log 2>&1; then   #Creamos una funcion para coger otro usuario si lo desea.
        id $usuariodos | cut -d ',' -f1
        exit
    else
        echo "El usuario $1 no existe"
        exit
    fi
}

if [ "$#" -eq "0" ]; then
    echo "No has introducido un parametro"
else
    if [[ "$#" -gt "1" ]]; then
        echo "Debes introducir como máximo un parámetro"   #Comprobamos que se ha introducido un parametro como maximo.
    else
        if id "$1" >>usuaejerci.log 2>&1; then
            echo "El usuario es: $1"
            id $1 | cut -d ',' -f1                      #Con el comando cut hacemos que nos coja lo que se nos pide.
            echo "Su directorio es:  home/$1"
            sleep 1
            echo "¿Quieres introducir otro usuario o quieres salir del programa?"
            echo "Pulsa a para buscar otro usuario o b para salir del programa"
            read opcion
            case $opcion in                            #con el case hacemos el resultado de la elección.
            a)
                echo "Escribe el nombre del otro usuario"
                read usuariodos
                usuario2
                ;;
            b)
                echo "Saliendo del programa"
                exit
                ;;
            *)
                echo "Elige una opción válida."
                sleep 1s
                exit
                ;;
            esac
        else
            echo "El usuario $1 no existe"
            exit 
        fi
    fi
fi
