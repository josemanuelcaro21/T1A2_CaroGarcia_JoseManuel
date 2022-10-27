#!/bin/bash
read numero
function ParamNum() { #Creamos una función para saber si se ha introducido un parametro o no, y si es un numero o no.

    if ! [ "$numero" -eq "$numero" ] 2>/dev/null; then
        echo "Error: Debes introducir algun numero" #Si no es un numero sale este mensaje de error y se acaba el script aqui.
        exit
    else

        echo "Has introducido un numero"
    fi
}

ParamNum #Llamamos a la funcion creada anteriormente.

resto=$((numero % 10)) #Creamos una variable llamada resto, la cual nos da el resto de la divison del numero entre 10, para saber si es multiplo o no.

if [ $resto -eq "0" ]; then #Hacemos que si es resto es igual a cero, por tanto, el numero introducido es un multiplo de 10.
    echo "$numero es multiplo de 10"
else
    echo "$numero no es multiplo de 10"
fi
