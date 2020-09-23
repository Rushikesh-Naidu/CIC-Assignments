#!/bin/bash -x

echo "Choose any 1";
echo "1: HEADS";
echo "2: TAILS";

read -p "Your Choice is: " n;

random=$((RANDOM%2 + 1))

while [[ $n -gt 2 || $n -eq 0 ]]
do
	read -p "Enter either 1 or 2:   " n;
done

if [[ $random -eq $n ]]
then
	echo "Hurrayyy, You Won...!";
else
	echo "Sorry, Try next time..!";
fi


