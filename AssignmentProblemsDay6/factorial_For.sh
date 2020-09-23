#!/bin/bash -x

echo "Factorial Of A Number"
read -p "Enter a number: " n;

fact=1

for((count=$n; count>=1; count--))
do
fact=$(($fact*$count));
done
echo "The factorial of $n = " $fact
