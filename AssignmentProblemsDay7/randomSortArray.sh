#!/bin/bash

echo "Lets generate 10 Random 3 digit numbers";
echo "After Storing them to an array, we have.., ";

n=1;
while [ $n -lt 11 ]
do
        ran=$((RANDOM%1000));
        Array+=("$ran");
        n=$((n+1));
done
for num in "${Array[@]}"
do
        echo $num;
done

for ((i=0; i<${#Array[@]}; i++))
do
	for ((j=0; j<${#Array[@]}-i-1 ; j++))
	do
		if [[ ${Array[j]} -gt ${Array[$((j+1))]} ]]
		then
			temp=${Array[j]};
			Array[j]=${Array[$((j+1))]}
			Array[$((j+1))]=$temp
		fi
	done
done

echo -e "\n";
echo "After Sorting, we have.., ";

for num in "${Array[@]}"
do
        echo $num;
done

echo "The Second Largest Number is ${Array[1]} "
echo -e "\n";
echo "The Second Smallest Number is ${Array[8]} "
