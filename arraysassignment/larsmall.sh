#!/bin/bash 

i=1
TotalNumbers=11
while [ "$i" -le $TotalNumbers ]
do
		random=${RANDOM:0:3}
		Array[$i]=$random
		((i++))
done
echo "Random 3 digits numbers "${Array[@]}

max=0
min=1000

for i in ${Array[@]}
do
	if [[ $i -gt $max ]]
	then
	max=$i;
	fi
	if [[ $i -lt $min ]]
	then
	min=$i;
	fi
done
#echo $max
#echo $min

secondMax=0
secondMin=0

for i in ${Array[@]}
do
	if [[ $i -ne $max && $secondMax -eq 0 ]]
	then
			secondMax=$i;
	elif [[ $i -lt $max && $i -gt $secondMax ]]
	then
			secondMax=$i;
	fi

	if [[ $i -ne $secondMin && $secondMin -eq 0 ]]
	then
			secondMin=$i;
	elif [[ $i -gt $min && $i -lt $secondMin ]]
	then
			secondMin=$i;
	fi
done
echo "second largest value is "$secondMax
echo "Second smallest value is "$secondMin
