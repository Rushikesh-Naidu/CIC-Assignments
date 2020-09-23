#!/bin/bash -x

echo "Lets generate 10 Random 3 digit numbers";
echo "After Storing them to an array, we have.., ";

n=1;
while [ $n -lt 11 ]
do
	ran=$((RANDOM%1000));
	Array+=("$ran");
	n=$((n+1));
done
for num in "${Array[@]}"
do
	echo $num;
done

lar=${Array[0]};
secLar=0;

for (( i=1; i<${#Array[@]}; i++ ))
do
	if [ ${Array[i]} -gt $lar ]
	then
		secLar=$lar;
		lar=${Array[i]};
	elif [ ${Array[i]} -gt $secLar ]
	then
		secLar=${Array[i]};
	fi
done

echo "The Second Largest Number is $secLar";

small=${Array[0]};
secSmall=0;

for (( i=1; i<${#Array[@]}; i++ ))
do
	if [ ${Array[i]} -lt $small ]
	then
        secSmall=$small;
        small=${Array[i]};
    elif [ ${Array[i]} -lt $secSmall ]
    then
        secSmall=${Array[i]};
    fi
done

echo "The Second Smallest Number is $secSmall"
