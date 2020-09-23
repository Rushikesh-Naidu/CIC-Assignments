#!/bin/bash -x

read -p "Enter a number from 0 to 9999: " n;

len=${#n};

if [ $len -eq 4 ]
then
	up=$(($n%10));
	echo "Units place = $up";
	n=$(($n/10));

	tp=$(($n%10));
	echo "Tens place = $tp";
	n=$(($n/10));

	hp=$(($n%10));
	echo "Hundreds place = $hp";
	n=$(($n/10));

	thp=$(($n%10));
	echo "Thousands place = $thp";

elif [ $len -eq 3 ]
then
	up=$(($n%10));
    echo "Units place = $up";
    n=$(($n/10));

    tp=$(($n%10));
    echo "Tens place = $tp";
    n=$(($n/10));

    hp=$(($n%10));
    echo "Hundreds place = $hp";

elif [ $len -eq 2 ]
then
	up=$(($n%10));
    echo "Units place = $up";
    n=$(($n/10));

    tp=$(($n%10));
    echo "Tens place = $tp";

elif [ $len -eq 1 ]
then
	up=$(($n%10));
    echo "Units place = $up";
else
	echo "The number is greater than 10000";
fi
