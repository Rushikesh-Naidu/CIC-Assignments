#!/bin/bash -x

echo "A program to print Sum and Average of 5 random numbers"

for i in `seq 5`
do
	random=$((RANDOM%100));
	echo $random;
	sum=$(($sum+$random));
done

echo "Sum = $sum";
avg=$(($sum/5))
echo "Average = $avg";
