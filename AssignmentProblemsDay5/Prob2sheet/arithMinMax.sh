#!/bin/bash -x

echo "Enter three numbers..!";
read a;
read b;
read c;

echo "Expressions to be performed";
echo "1) a + b * c";
echo "2) a % b + c";
echo "3) c + a / b";
echo "4) a * b + c";

first=$(($a + $(($b * $c)) ));
second=$(( $(($a % $b )) + $c ));
third=$(( $c + $(($a / $b )) ));
fourth=$(( $(( $a * $b )) + $c));

echo "Value of 1st expression is $first";

echo "Value of 2nd expression is $second";

echo "Value of 3rd expression is $third";

echo "Value of 4th expression is $fourth";


echo "The maximum number among these is = ";

if [ $first -gt $second ] && [ $first -gt $third ] && [ $first -gt $fourth ]
then
	echo "$first";
elif [ $second -gt $first ] && [ $second -gt $third ] && [ $second -gt $fourth ]
then
	echo "$second";
elif [ $third -gt $first ] && [ $third -gt $second ] && [ $third -gt $fourth ]
then
    echo "$third";
elif [ $fourth -gt $first ] && [ $fourth -gt $second ] && [ $fourth -gt $third ]
then
    echo "$fourth";
fi

echo "The Minimum number among these is = ";

if [ $first -lt $second ] && [ $first -lt $third ] && [ $first -lt $fourth ]
then
    echo "$first";
elif [ $second -lt $first ] && [ $second -lt $third ] && [ $second -lt $fourth ]
then
    echo "$second";
elif [ $third -lt $first ] && [ $third -lt $second ] && [ $third -lt $fourth ]
then
    echo "$third";
elif [ $fourth -lt $first ] && [ $fourth -lt $second ] && [ $fourth -lt $third ]
then
    echo "$fourth";
fi
