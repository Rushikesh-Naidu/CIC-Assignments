#!/bin/bash 

n=$1

echo "-------------------------";
echo "|  Powers     |  Values   |";
for (( i=1; i<=$n; i++ ))
do
echo "|   2 ^ $i     |     $((2**$i))     |";
done
echo "-------------------------";
