#!/bin/bash
echo "Introduzca los numeros para hacer el calculo"
read num1
read num2
function ParamNum() { #Creamos una función para saber si se ha introducido un parametro o no, y si es un numero o no.

    if ! [ "$num1" -eq "$num1" -a "$num2" -eq "$num2" ] 2>/dev/null; then
        echo "Error: Debes introducir algun numero" #Si no es un numero sale este mensaje de error y se acaba el script aqui.
        exit
    else

        echo "Has introducido correctamente los numeros"
    fi
}

function sumar {  #Creamos la funcion sumar.
    suma=$(($num1 + $num2))
    echo $suma
    exit
}

function restar {  #Creamos la funcion restar.
    resta=$(($num1 - $num2))
    echo $resta
    exit
}

function dividir {  #Creamos la funcion dividir.
    division=$(($num1 / $num2))
    decimal=$(echo "scale=1; $((num1))/$((num2))" | bc)
    echo "$decimal"
    exit
}

function multiplicar {  #Creamos la funcion multiplicar.
    multiplicacion=$(($num1 * $num2))
    echo $multiplicacion
    exit
}
ParamNum #Llamamos a la funcion.
while true; do  #Hacemos el menu con un while por si se introduce algo erroneo vuelva a salir el menu.

    echo "Elige una opción para realizar el calculo"
    echo " 1)Sumar
 2)Restar
 3)Dividir
 4)Multiplicar
 5)Salir"

    read cuenta
    case $cuenta in
    1)
        echo "El resultado de la suma es: "
        sumar
        ;;
    2)
        echo "El resultado de la resta es: "
        restar
        ;;                                           #Hacemos un case llamando a las funciones en los diferentes casos.
    3)
        echo "El resultado de la division es: "
        dividir
        ;;
    4)
        echo "El resultado de la multiplicacion es: "
        multiplicar
        ;;
    5)
        echo "Saliendo de la calculadora"
        sleep 2
        exit 1
        ;;
    *)
        echo "Elige un numero del 1 al 4"
        ;;
    esac
done
