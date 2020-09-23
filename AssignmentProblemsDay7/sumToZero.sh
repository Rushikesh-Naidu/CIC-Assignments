#!/bin/bash -x

echo "Let's check if three integers equate to zero of not"

read -p "Enter 1st integer= " x;
read -p "Enter 2nd integer= " y;
read -p "Enter 3rd integer= " z;

integers=("$x" "$y" "$z");
sum=0

for n in "${integers[@]}"
do
	sum=$(($sum+$n));
done

echo $sum;

if [ $sum -eq 0 ]
then

	echo "Sum is equates to zero";
else
	echo "Sorry, they dont equate to zero";
fi
