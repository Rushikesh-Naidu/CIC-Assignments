#!/bin/bash 

n=$1
i=1;

echo "-------------------------";
echo "|  Powers   |  Values   |"
while [ $i -le $n ] && [ $((2**$i)) -le 256 ]
do
echo "|   2 ^ $i   |     $((2**$i))     |";
((i++));
done
echo "-------------------------";
