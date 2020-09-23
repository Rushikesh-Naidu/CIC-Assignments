#!/bin/bash -x

read -p "Enter a starting range: " n1;
read -p "Enter a ending range: " n2;

echo "The prime numbers between $n1 and $n2 are:"

for((i=$n1; i<=$n2; i++))
do
	count=0;

	for((counter=2; counter<i; counter++))
	do

		if [[ $(($i%$counter)) -eq 0 ]]
		then
			count+=1;
		fi
	done

	if [[ $count -eq 0 ]]
	then
		echo $i;
	fi

done
