#!/bin/bash -x

echo "Lets check if 2 numbers are palindromes..!"

read -p "Enter the first number: " n1;
read -p "Enter the second number: " n2;

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
else
echo "$n is not a palindrome";
fi
}

for n in $n1
do
num=$n1
palindrome
done

for n in $n2
do
num=$n2;
palindrome
done
