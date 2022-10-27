#!/bin/bash
echo "Introduce tu edad:"
read edad
function ParamNum() { #Creamos una función para saber si se ha introducido un parametro o no, y si es un numero o no.

    if ! [ "$edad" -eq "$edad" ] 2>/dev/null; then
        echo "Error: Debes introducir algun numero" #Si no es un numero sale este mensaje de error y se acaba el script aqui.
        exit
    else

        echo "Has introducido un numero"
    fi
}
ParamNum  #Llamamos a la funcion.
anio=$(date +'%Y') #Creamos la variable del año actual.
let fnaci=$anio-$edad #Hacemos el calculo del año de nacimiento, restandole al año actual la edad.
echo "$fnaci"

function decada {

    case $fnaci in
    200[0-9])
        echo "Eres de la decada de los 2000"
        ;;
    199[0-9])
        echo "Eres de la decada de los 90"
        ;;
    198[0-9])
        echo "Eres de la decada de los 80"           #Mediante una funcion y un case claculamos la decada
        ;;
    197[0-9])
        echo "Eres de la decada de los 70"
        ;;
    196[0-9])
        echo "Eres de la decada de los 60"
        ;;
    *)
        echo "no tienes la edad min o max"
        ;;
    esac
}

if [ $edad -ge 15 -a $edad -le 60 ]; then  #Con un if hacemos que la edad sea entre 15 y 60
    decada
else
    echo "No tienes la edad minima o maxima"
fi

