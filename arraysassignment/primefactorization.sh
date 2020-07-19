#!/bin/bash

read -p "number :" n
flag=0;
arrindex=0;
if [[ $n -ne 0 && $n -ne 1 ]]
then
	for (( i=2;i<$n;i++ ))
	do
			if [ `expr $n % $i` -eq 0 ]
			then
				factor=$i
				echo "factors are" $factor
							flag=0;

					for (( j=2;j<=$factor;j++ ))
					do
							if [[ `expr $factor % $j` -eq 0 ]]
							then

										flag=1;
										break;
							fi
					done
							if [[ $flag==0 ]]
							then Primefactor[$i]=$factor;
							fi
			fi

	done
fi
				echo "Prime factors are " ${Primefactor[@]}



