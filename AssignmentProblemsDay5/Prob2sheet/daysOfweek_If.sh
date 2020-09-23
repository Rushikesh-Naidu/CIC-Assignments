#!/bin/bash -x

read -p "Enter a number from 1 to 7:  " n;

echo "If we start the week from Sunday";

echo "The $n day of the week is ";

if [ $n -eq 1 ]
then
	echo "SUNDAY";
elif [ $n -eq 2 ]
then
	echo "MONDAY";
elif [ $n -eq 3 ]
then
	echo "TUESDAY";
elif [ $n -eq 4 ]
then
	echo "WEDNESDAY";
elif [ $n -eq 5 ]
then
	echo "THURSDAY";
elif [ $n -eq 6 ]
then
	echo "FRIDAY";
elif [ $n -eq 7 ]
then
	echo "SATURDAY";
else
	echo "you didn't choose any week day..!";
fi
