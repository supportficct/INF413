#!/bin/bash
#Test IF-ELSE
echo 'introduzca el numero de byte :'
read by
echo 'introduzca el numero de bloque :'
read blq
echo 'introduzca el numero de directos :'
read ndi
let ap=blq/4
let Ls=blq*ndi

if [ 0 -le $by ]&&[ $by -lt $Ls ]
then
	let nb=$by/$blq
	let dpz=$by%$blq
	echo "numero de bloque = "+ $nb
	echo "numero de dpz = "+ $dpz
	echo 'entro por el primero if'
fi

let Ss=($blq*$ap )+$Ls
if [ $Ls -le $by ]&&[ $by -lt $Ss ]
then
	let nb=$by/$blq
	let dpz=$by%$blq
	echo "numero de bloque = "+ $nb
	echo "numero de dpz = "+ $dpz
	echo 'entro por el segundo if'
fi

let aux=($ap*$ap)
let Ds=($blq*$aux)+$Ss
if [ $Ss -le $by ]&&[ $by -lt $Ds ]
then
	let nb=$by/$blq
	let dpz=$by%$blq
	echo "numero de bloque = "+ $nb
	echo "numero de dpz = "+ $dpz
	echo 'entro por el tercer if'
fi

let aux=($ap*$ap*$ap)
let Ts=($blq*$aux)+$Ds
if [ $Ts -le $by ]&&[ $by -lt $Ts ]
then
	let nb=$by/$blq
	let dpz=$by%$blq
	echo "numero de bloque = "+ $nb
	echo "numero de dpz = "+ $dpz
	echo 'entro por el cuarto if'
fi
echo 'no entro por ninguno'
