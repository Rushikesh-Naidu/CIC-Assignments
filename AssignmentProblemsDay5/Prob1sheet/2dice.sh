#!/bin/bash -x

Dice1=$((RANDOM%6+1));
echo "$Dice1 is the 1st dice number";
Dice2=$((RANDOM%6+1));
echo "$Dice2 is the 2nd dice number";

echo "Sum of 2 dices is $(( $Dice1 + $Dice2 ))";
