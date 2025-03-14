#!/bin/bash

echo "Este script recibe argumentos $1" # toma un argumento
echo "Este script recibe argumentos $@" # toma todos los argumentos
### ciclo for

# MASTERS seria como un contador, esta almacena
# el valor que tiene el arreglo que esta leyendo
# toma todos los argumentos que se tiene 
#for MASTERS in ${@}; do
#    echo "Este script recibe argumentos $MASTERS"
#done    


## funcion que saluda con todos los parametros

function saludar(){
    echo "Hola mi master $1"
}

for MASTERS in ${@}; do
    saludar $MASTERS
done    

## bucle while
X = 3

while [[$X -ge 1 ]] ; do
    echo "El valor de x es: $X"
    X = $((X-1))
done

### bucle until
Y=3
until [[$Y <1]] ; do
    echo "El valor de Y es: $Y"
    Y = $((El valor de Y es $Y))
done

case $NUMERO in
    1) 
        echo "El numero es 1"
        ;;
    2) 
        echo "El numero es 2"
        ;; 
    3) 
        echo "El numero es 3"
        ;; 
    *)
        echo "El numero ingresado no es 1, 2 o 3, revise las instrucciones" 
esac

case ${1} in
    1) 
        echo "El numero es 1"
        ;;
    2) 
        echo "El numero es 2"
        ;; 
    3) 
        echo "El numero es 3"
        ;; 
    *)
        echo "El numero ingresado no es 1, 2 o 3, revise las instrucciones" 
esac

## lee por parametros, la variable seria opt
while getops "abc" opt; do
    case $opt in
        a) 
            echo "El numero es 1"
            ;;
        b) 
            echo "El numero es 2"
            ;; 
        c) 
            echo "El numero es 3"
            ;; 
        *)
            echo "El numero ingresado no es 1, 2 o 3, revise las instrucciones" 
    esac
done