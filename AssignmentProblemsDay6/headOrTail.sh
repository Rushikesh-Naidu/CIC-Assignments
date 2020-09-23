#!/bin/bash

echo "Lets check if its a HEAD or TAIL..!";

echo "And Its a...";

h=0;
t=0;
while [[ $h -le 11 ]] && [[ $t -le 11 ]]
do
	if [ $h -eq 11 ]
	then
		echo "Heads won 11 times"
	break
	elif [ $t -eq 11 ]
	then
		echo "Tails won 11 times"
	break
	fi

	if [ $((RANDOM%2+1)) -eq 1 ]
	then
		echo "HEAD"
		((h++));
		if [ $h -gt 11 ]
		then
			break
		fi
	else
		echo "TAIL"
		((t++));
		if [ $t -gt 11 ]
		then
			break;
		fi
	fi


done
