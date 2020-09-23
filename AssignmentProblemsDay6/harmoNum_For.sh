#!/bin/bash

n=$1;
hp=0;

echo "The nth Hormonic number is: "
for (( i=1; i<=$n; i++ ))
do
hp=`awk 'BEGIN {print ('$hp' + 1/'$i')}'`;
done

echo $hp;
