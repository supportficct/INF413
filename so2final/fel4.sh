#!/bin/bash
echo "Ejercicio 4"
touch texto_04
x=1
while [ $x -le 15 ]
do
  t=`awk 'NR=='$x texto.dat`
  x=$(( $x + 1 ))
  y=`awk 'NR=='$x texto.dat` 
 echo $t" "$y >> texto_04
 
  x=$(( $x + 1 ))
done 

echo "HECHO: ver resultado"
cat texto_04


