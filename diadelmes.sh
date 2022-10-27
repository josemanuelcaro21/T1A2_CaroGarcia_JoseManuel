#!/bin/bash
mes=$(date +'%m')   #Cogemos el mes con el comando date, es decir, por ejemplo en Octubre nos cogera el 10.

case $mes in
1)
    echo "Estamos en Enero , un mes con 31 dias"
    ;;
2)
    echo "Estamos en Febrero , un mes con 28 dias"
    ;;
3)
    echo "Estamos en Marzo , un mes con 31 dias" #Mediante una funcion y un case claculamos el mes
    ;;
4)
    echo "Estamos en Abril , un mes con 30 dias"
    ;;
5)
    echo "Estamos en Mayo , un mes con 31 dias"
    ;;
6)
    echo "Estamos en Junio , un mes con 30 dias"
    ;;
7)
    echo "Estamos en Julio , un mes con 31 dias"
    ;;
8)
    echo "Estamos en Agosto , un mes con 31 dias"
    ;;
9)
    echo "Estamos en Septiembre , un mes con 30 dias"
    ;;
10)
    echo "Estamos en Octubre , un mes con 31 dias"
    ;;
11)
    echo "Estamos en Noviembre , un mes con 30 dias"
    ;;
12)
    echo "Estamos en Diciembre , un mes con 31 dias"
    ;;
*) ;;
esac
