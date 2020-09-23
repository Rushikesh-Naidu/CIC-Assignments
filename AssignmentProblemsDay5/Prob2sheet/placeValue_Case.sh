#!/bin/bash -x

read -p "Enter a number from 0 to 9999: " n;

len=${#n};

case $len in
4)
up=$(($n%10))
echo "Units place = $up"
n=$(($n/10))

tp=$(($n%10))
echo "Tens place = $tp"
n=$(($n/10))

hp=$(($n%10))
echo "Hundreds place = $hp"
n=$(($n/10))

thp=$(($n%10))
echo "Thousands place = $thp"
;;

3)
    up=$(($n%10))
    echo "Units place = $up"
    n=$(($n/10))

    tp=$(($n%10))
    echo "Tens place = $tp"
    n=$(($n/10))

    hp=$(($n%10))
    echo "Hundreds place = $hp"
;;

2)
	up=$(($n%10))
    echo "Units place = $up"
    n=$(($n/10))

    tp=$(($n%10))
    echo "Tens place = $tp"
;;

1)
    up=$(($n%10))
    echo "Units place = $up"
;;
*)
    echo "The number is greater than 10000";;
esac
