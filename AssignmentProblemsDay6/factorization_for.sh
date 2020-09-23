#!/bin/bash -x

read -p "Enter a number to know the factors of:  " n;
echo -e "\n"

echo "The Factors of $n are:- ";

if [[ $n -gt 0 ]]
then
        fact=1;


        for (( i=0; i<=$n/2; i++ ))
		do

                if [ $(($n%$fact)) -eq 0 ]
                then
                        echo $fact
                fi

                fact=$(($fact+1))
        done

else
        echo "Please enter a valid no"
fi
