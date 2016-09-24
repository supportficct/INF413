
if test $# -eq0
	then
	 echo "Debe proporcionar por lo menos un argumento"
	exit 1	
fi
if test -f "$1"
 then 
 	echo "$1 es un fichero normal en el directorio de trabajo" 
 else
	echo "$1 No es un fichero normal en el directorio de trabajo"
fi

if test -d "$1"
 then 
 	echo "$1 Existe y es un fichero de directorio" 
 else
	echo "$1 No Existe y no es un fichero de directorio"
fi

if test -e "$1"
 then 
 	echo "$1 Existe" 
 else
	echo "$1 No Existe"
fi

if test -r "$1"
 then 
 	echo "$1 Existe y se puede leer" 
 else
	echo "$1 No Existe y no se puede leer"
fi

if test -s "$1"
 then 
 	echo "$1 Existe y tiene un tamaño mayor que 0 bytes" 
 else
	echo "$1 No Existe y no tiene un tamaño mayor que 0 bytes"
fi

if test -w "$1"
 then 
 	echo "$1 Existe y se puede escribir" 
 else
	echo "$1 No Existe y no se puede escribir"
fi

if test -x "$1"
 then 
 	echo "$1 Existe y se puede ejecutar" 
 else
	echo "$1 No Existe y no se puede ejecutar"
fi
