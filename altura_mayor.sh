#!/bin/bash
echo "Introduzca tres alturas en centimetros: (xxx)"
read altura1
read altura2 #Pedimos que se nos introduzca treas numeros por pantalla. 
read altura3

function ParamNum() { #Creamos una función para saber si se ha introducido un parametro o no, y si es un numero o no.

    if ! [ "$altura1" -eq "$altura1" ] 2>/dev/null; then
        echo "Error: Debes introducir algun numero" #Si no es un numero sale este mensaje de error y se acaba el script aqui.
        exit
    else

        echo "Has introducido la altura 1 correctamente"
    fi

    if ! [ "$altura2" -eq "$altura2" ] 2>/dev/null; then
        echo "Error: Debes introducir algun numero" #Si no es un numero sale este mensaje de error y se acaba el script aqui.
        exit
    else

        echo "Has introducido la altura 2 correctamente"
    fi

    if ! [ "$altura3" -eq "$altura3" ] 2>/dev/null; then
        echo "Error: Debes introducir algun numero" #Si no es un numero sale este mensaje de error y se acaba el script aqui.
        exit
    else

        echo "Has introducido la altura 3 correctamente"
    fi
}

ParamNum

resultado1=$(echo "scale=2; $((altura1))/100" | bc)
resultado2=$(echo "scale=2; $((altura2))/100" | bc)  #Hacemos el calculo de centímetros a metros
resultado3=$(echo "scale=2; $((altura3))/100" | bc)

if [ $altura1 -gt $altura2 ] && [ $altura1 -gt $altura3 ]; then
    echo "la altura mayor es: $altura1"
    echo "Resultado: $resultado1 metros"
fi

if [ $altura2 -gt $altura1 ] && [ $altura2 -gt $altura3 ]; then         #calculamos cual de las tres altura es la mayor.
    echo "La altura mayor es: $altura2"
    echo "Resultado: $resultado2 metros"
fi

if [ $altura3 -gt $altura1 ] && [ $altura3 -gt $altura2 ]; then
    metros3=$((altura3 / 100))
    echo "La altura mayor es: $altura3"
    echo "Resultado: $resultado3 metros"

fi
