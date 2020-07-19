#!/bin/bash
i=0
arr=( 1 2 -3 4 -5 )
for i in ${arr[@]}
do
	let j=i+1
	for j in ${arr[@]}
		do
			let k=j+1
				for k in ${arr[@]}
				do
					if [[ $(( arr[$i] + arr[$j] + arr[$k] )) == 0 ]]
					then
					echo "${arr[$i]} \c"
					echo "${arr[$j]} \c"
					echo "${arr[$k]} \n"
					fi
				done
		done

done
