#!/bin/bash -x

echo "Hey there!! Let's play a game"

echo "Think of a number from 1 to 100 and I'll guess it right..!"

n=100

while [ $n -gt 0 ]
do

echo "Is the number greater than $(($n/2))? "
echo "Press 'y' for Yes!"
echo "Press 'n' for No!"
read ans;

if [[ $ans -eq "y" ]] && [[ $ans -eq "Y" ]]
then
	if [ $n -eq $a ]
	a=$((n/2));
	n=$(($n+$a));
else
	a=$((n/2));
	n=$(($n-$a));
fi

done

echo "You thought of $a";
