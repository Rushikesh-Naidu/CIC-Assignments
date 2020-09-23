#!/bin/bash -x

a=$((RANDOM%1000));
b=$((RANDOM%1000));
c=$((RANDOM%1000));
d=$((RANDOM%1000));
e=$((RANDOM%1000));

echo "The Random numbers are..";
echo $a;
echo $b;
echo $c;
echo $d;
echo $e;

echo "The Maximum number among these are: "
if [ $a -gt $b ] && [ $a -gt $c ] && [ $a -gt $d ] && [ $a -gt $e ]
then
echo $a;
elif [ $b -gt $a ] && [ $b -gt $c ] && [ $b -gt $d ] && [ $b -gt $e ]
then
echo $b;
elif [ $c -gt $a ] && [ $c -gt $b ] && [ $c -gt $d ] && [ $c -gt $e ]
then
echo $c;
elif [ $d -gt $a ] && [ $d -gt $b ] && [ $d -gt $c ] && [ $d -gt $e ]
then
echo $d;
elif [ $e -gt $a ] && [ $e -gt $b ] && [ $e -gt $c ] && [ $b -gt $e ]
then
echo $e;
fi

echo "The Manimum number among these are: "
if [ $a -lt $b ] && [ $a -lt $c ] && [ $a -lt $d ] && [ $a -lt $e ]
then
echo $a;
elif [ $b -lt $a ] && [ $b -lt $c ] && [ $b -lt $d ] && [ $b -lt $e ]
then
echo $b;
elif [ $c -lt $a ] && [ $c -lt $b ] && [ $c -lt $d ] && [ $c -lt $e ]
then
echo $c;
elif [ $d -lt $a ] && [ $d -lt $b ] && [ $d -lt $c ] && [ $d -lt $e ]
then
echo $d;
elif [ $e -lt $a ] && [ $e -lt $b ] && [ $e -lt $c ] && [ $b -lt $e ]
then
echo $e;
fi
