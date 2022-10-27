#!/bin/bash
echo "Introduce tu año de nacimiento" 
read fecha

function ParamNum() { #Creamos una función para saber si se ha introducido un parametro o no, y si es un numero o no.

    if ! [ "$fecha" -eq "$fecha" ] 2>/dev/null; then
        echo "Error: Debes introducir algun numero" #Si no es un numero sale este mensaje de error y se acaba el script aqui.
        exit
    else

        echo "Has introducido un numero"
        num
    fi
}

#---------------------------------------------------------------------
function num {

    if [ $fecha -le 2022 -a $fecha -gt 999 ]; then #Con un if hacemos que la fecha sea entre 999 y 2022
        HoroscopoChino
    else
        echo "No has introducido bien la fecha de nacimiento, recuerda que son 4 digitos"
    fi

}

function HoroscopoChino {
    resto=$((fecha % 12)) #
    case $resto in
    0)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año de la rata"
        ;;
    1)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año del buey"
        ;;
    2)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año del tigre" #Mediante una funcion y un case claculamos el horoscopo
        ;;
    3)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año del conejo"
        ;;
    4)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año del dragon"
        ;;
    5)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año de la serpiente"
        ;;
    6)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año del caballo"
        ;;
    7)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año de la cabra"
        ;;
    8)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año del mono"
        ;;
    9)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año del gallo"
        ;;
    10)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año del perro"
        ;;
    11)
        echo "Tu mes de nacimiento es el $fecha, por tanto tu año en el horoscopo es el año del cerdo"
        ;;

    *) ;;
    esac
}

ParamNum
