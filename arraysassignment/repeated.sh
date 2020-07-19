#!/bin/bash

i=1
while [[ $i -le 100 ]]
do
	if [[ $i%11 -eq 0 ]]
	then
		array[i]=$i
		echo ${array[i]}
	fi
		let i=i+1
done

