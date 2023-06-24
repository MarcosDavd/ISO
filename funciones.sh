#!/bin/bash

// las funciones en  bash se declaran de la siguiente forma

function nombre (){
    //TODO
}
// O tambien

nombre (){
    //TODO
}
# Notar los espacios , se rompe todo si no los pones 
# Tambien algo a tener en cuenta es que al momento de pasar paremetros a una funcion 
# no se declaran los parametros recibidos ej : function nombre (var x:integer; y:string) 
# como en el caso de pascal 

# Como enviar parametros a una funcion ?
    nombreDeLaFuncion variable

#De que forma una funcion recibe parametros ?

function suma(){
    echo "$1"
    echo "$2"
    echo "$3"  #de esta forma la funcion tiene los tres parametros que se le pudo haber enviado 
    echo "$*" #si se le envian muchos parametros $* tiene todos los datos enviados , como una lista de datos 
    echo "$#" #Cantidad de parametros que se le envaron a la funcion  
    #Algo muy importante a destacar es que no se le pueden enviar vectores a una funcion por ej 
    # suma $vector
    #esto no es posible , se debe tomar al vector como una variable global, algo como
    echo $vector[i] # imprime el dato del vector en pos i
}
#Las funciones pueden devolver un valor de retorno entre 0 y 255 "codigo de salida o retorno"
# esto indica que si return fue 0 la funcion se ejecuto correctamente
# si fue un valor distinto a 0 dio algun error
#ej
function errores (){
    if [ $# -gt 1 ]; then
        return 0
    else
        return 1
    fi
    #Esta funcion retorna un codigo 0 si la cant de parametros es mayor a 0
    # y 1 si no se recibio ningun parametro 
}
# Como saber si funciono la funcion si ya se el valor de retorno ?
echo "$?" # Esto muestro es estado de la ultima funcion ejecutada
