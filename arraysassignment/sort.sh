#!/bin/bash -x

i=1
TotalNumbers=11
while [ "$i" -le $TotalNumbers ]
do
		random=${RANDOM:0:3}
		Array[$i]=$random
		((i++))
done
echo ${Array[@]}

secondMin=$(printf '%s\n' "${Array[@]}" | sort -n | head -2 | tail -1 )
echo $secondMin
 
secondMax=$(printf '%s\n' "${Array[@]}" | sort -n | tail -2 | head -1 )
echo $secondMax

