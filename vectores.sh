#!/bin/bash

echo "Hola Mundo"

vec=(1 2 3)
echo "Longitud del vector ${#vec[@]} "
vec=(0 "${vec[@]}")
for i in "${vec[@]}"
do
    echo "$i"
done
echo ${vec[@]}
echo "Longitud del vector ${#vec[@]} "

read -p "Ingrese el numero  :" num1
if [ $num1 -eq 3 ]; then
    echo "El numero es 3"
fi 
