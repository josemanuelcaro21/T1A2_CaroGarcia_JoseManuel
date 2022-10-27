#!/bin/bash
echo "Introduce dos numeros naturales para ver la suma de su secuencia:"  #Hacemos que haya que introducir dos numeros por pantalla.

read num1
read num2

function cseq {   #Creamos la funcion de la secuencia.

    suma=$(expr $(seq -s " + " $num1 $num2))
    rango=$(seq -s '+' $num1 $num2)

    echo "Mediante el comando seq: "
    echo "El rango de los numeros es $rango"
    echo "La suma de los numeros que componen el rango es $suma"
}


function cfor {   #Creamos la funcion del for.

    echo "Mediante el bucle:"
    resultado=0
    for ((i = $num1; i <= $num2; i++)); do
        let resultado=resultado+$i
        echo "$i"

    done

    echo " El resultado de la suma es $resultado"
}

function ParamNum() { #Creamos una función para saber si se ha introducido un parametro o no, y si es un numero o no.

    if ! [ "$num1" -eq "$num1" -a "$num2" -eq "$num2" ] 2>/dev/null; then
        echo "Error: Debes introducir algun numero" #Si no es un numero sale este mensaje de error y se acaba el script aqui.
        exit
    else

        echo "Has introducido bien los numeros"
        cseq
        cfor

    fi
}

ParamNum #Llamamos a la funcion creada anteriormente.

