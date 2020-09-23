#!/bin/bash -x

read -p "Enter the year = " year;

if [ $(($year%4)) -eq 0 ]
then
valid=True

	if [ $(($year%100)) -eq 0 ] && [ $(($year%400)) -gt 0 ]
	then
		valid=False
	fi

fi

if [ $valid = "True" ]
then
	echo "$year is a Leap Year...!"
else
	echo "$year is not a Leap Year...!"
fi
