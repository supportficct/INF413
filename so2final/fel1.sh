#!/bin/bash
echo "ejercicio 1"

touch texto_01
cat texto.dat | tr  ' ' '\n' >> temporal
x=2
while [ $x -le 56 ]
do
  t=`awk 'NR=='$x temporal`
  x=$(( $x + 2 ))
  y=`awk 'NR=='$x temporal` 
 echo $t" "$y >> temporal2
   x=$(( $x + 2 ))
done 
sort -n -u -r -k 2 temporal2 >> texto_01 
rm temporal
rm temporal2
echo "HECHO: ver resultado"
cat texto_01

