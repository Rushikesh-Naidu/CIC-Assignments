#!/bin/bash -x

echo "Let's play a gamble game..!"
win=0;
loss=0;

bet=100;
echo "Your bet is 100 grands"

while [[ $bet -gt 0 ]] && [[ $bet -le 200 ]]
do
if [ $((RANDOM%2+1)) -eq 1 ]
then
((bet++));
else
((bet--));
fi
done

echo "..";
echo "..";
echo "..";
echo "..";

if [ $bet -eq 0 ]
then
echo "You lost the game..!";
else
echo "You won....! And you have $bet grands now..!";
fi
