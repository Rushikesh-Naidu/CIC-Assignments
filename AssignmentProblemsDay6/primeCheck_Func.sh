#!/bin/bash

read -p "Enter a any number greater than 10: " n;

prime()
{
for(( i=2; i<=$n/2; i++))
do
        if [[ $(($n%$i)) -eq 0 ]]
        then
                echo "$n is not a prime number";
        exit
        fi
done

echo "$n is a prime number";
}

palindrome()
{
rev=0;
while [ $num != 0 ]
do
rem=`expr $num % 10`;
rev=`expr $rev \* 10 + $rem`;
num=`expr $num / 10`;
done
if [ $rev -eq $n ]
then
echo "$n is a palindrome";
pal=True
else
echo "$n is not a palindrome";
fi
}

echo "Let's check if $n is a prime number..!"
echo -e "\n"
prime

echo -e "\n"
echo "Lets check if $n is a palindrome..!"
echo -e "\n";
for item in $n
do
num=$n;
palindrome;
done


if [[ $pal = True ]]
then
echo -e "\n";
echo "Lets check if the palindrome is a prime too..!"
prime
fi
