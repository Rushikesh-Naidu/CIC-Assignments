#!/bin/bash -x

echo "The Palindrome numbers from 0 to 100 are: "
n=1;

while [ $n -le 100 ]
do
	a=$(($n%10));
	b=$(($n/10));

	if [ $a -eq $b ]
	then
		palindrome+=("$n");
	fi

	n=$(($n+1));
done

for pal in "${palindrome[@]}"
do
echo $pal;
done

