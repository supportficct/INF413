by=159000
blq=512
ndi=4
ap=$blq / 4
ls=$blq * $ndi
if (($by >= 0 ) & ($by < $ls)) 
then
	nb=$by / $blq
        dpz=$by % $blq
        echo "Directo"
	echo $by""$nb""$dpz
else
        ss=$blq * $ap + $ls
        if(($by >= $ls) & ($by < $ss))
	then
         	nb=$by / $blq
              	dpz=$by % $blq
              	echo "Indirecto Simple"
   		echo "$by"
   		echo "$nb"
   		echo "$dpz"
        else
              	ds=$blq * $ap** + $ss
               	if(($by >= $ss) & ($by < $ds))
		then
                	nb=$by / $blq
                	dpz=$by % $blq
                	echo "Indirecto Doble"
	    		echo "$by"
	    		echo "$nb"
	    		echo "$dpz"
                else
                 	ts=$blq * $ap*** + $ds
                    	if(($by > $ds) & ($by < $ts))
			then
				nb=$by / $blq
			        dpz=$by % $blq
                		echo "Indirecto Triple"
	    			echo "$by"
	    			echo "$nb"
	    			echo "$dpz"
                        else
                        	echo "ERROR"
			fi
		fi
	fi	
fi

