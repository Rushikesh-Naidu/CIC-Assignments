#!/bin/bash -x

read -p "Enter a number:  " n;
echo "Let us find the Prime Factors of $n";
echo "The Prime Factors of $n are:- ";

if [ $n -gt 0 ]
then
	fact=1;

	while [ $fact -le $(($n/2)) ]
	do

		if [ $(($n%$fact)) -eq 0 ]
		then
			PrimeFactor+=( "$fact" )
		fi

		fact=$(($fact+1))
	done

	for number in "${PrimeFactor[@]}"
	do
		echo $number
	done

else
	echo "Please enter a valid no"
fi
