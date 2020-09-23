#!/bin/bash

declare -A Dice
Dice=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0);

while [ True ]
do

	ran=$((RANDOM%6+1));
	((Dice[$ran]++));

	if [ "${Dice[$ran]}" -eq 10 ]
	then
		large=$ran;
		break
	fi

done

for key in "${!Dice[@]}"
do
	echo "$key comes => ${Dice[$key]}";
done

small=1;
a="${Dice[1]}";

for key in ${!Dice[@]}
do

	if [[ ${Dice[key]} -lt $a ]]
	then
		small=$key;
	else
		small=$a;
	fi

done

echo "The number with highest occurances is $large with ${Dice[$large]} occurances";
echo "The number with least occurances is $small with ${Dice[$small]} occurances ";
