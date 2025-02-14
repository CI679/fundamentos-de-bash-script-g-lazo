#!/bin/bash
#tipos de variables: universal pero lavariale toma el tipo de la primera
#asignacion

n1=10
n2=7
echo "el valor de n1 es $n1" #para acceder al valor de la variable se usa $

# estructuras de control condicionales
# Operadores condicionales 
# < es (-lt)   > es (-gt)  
# <=   es (-le)  => es (-ge) 
# == es (-eq)    != es (-ne)

if [[ $n1 -gt $n2 ]]; then
	echo "La sentencia es verdadera $n1 $n2"
else
	echo "La sentencia es falsa $n1 $n2"
fi

# Todo programa cuando es exitoso regresa un 0
res=$?
echo "El resultado de la ejecucion es $res"
ls 
if [[ $? -eq 0 ]]; then
	echo "La sentencia se ejecuto correctamente"
else 
	echo "La sentencia fallo"
fi


# Operadores para manipular archivos

# -e Indica si un archivo o carpeta existe
# -d Indica si es una carpeta (directory)
# -r -w -x (Si puede leer, escribir o ejecutar)
# -s Indica si el archivo está vacío

file="./file-demo"

if [[ -s $file ]]; then
	echo "El archivo tiene algo."
else 
	echo "El archivo está vacío."
fi

# Operadores logicos AND y OR

if [ -r $file ] && [ -x $file ]; then
	echo "El archivo se puede leer y ejecutar"
else
	echo"El archivo no se puede leer ni ejecutar"
fi

#Estructura de control case

# $ es un array donde $# ($1, $2, $3, ..., $n) -h hola
case $1 in
	hola )
		echo "bienvenido"
	;;
	adios )
		echo "Adios"
	;;
	*)
		echo "No entiendo"
	;;
esac

# Estructuras iterativas

# while
user=""
while [[ $user != "admin" ]]; do
	read -p "¿Cuál es tu usuario?" user
done

# for

for i in {1..5}; do
	echo "El numero es $i"
done

for ((i=0; i<5; i++)); do
	echo "* el numero es $i"
done

invitados=(pedro juan david maria lulu ivan)
for invitado in ${invitados[@]}; do
	echo "Hola $invitado"
done

# Funciones
suma(){
	echo "Hola desde la función sumar,"
}

resta(){
	echo $(( $1 - $2 ))
}
suma
total=$(resta 9 4)
echo "El total es $total"
