#!/bin/bash -x

read -p "Enter a number from 1 to 7: " n;

echo "The $n day of the week is "

case $n in
1) echo "Sunday";;

2) echo "Monday";;

3) echo "Tuesday";;

4) echo "Wednesday";;

5) echo "Thursday";;

6) echo "Friday";;

7) echo "Saturday";;

*) echo "Not a valid input..!";;
esac

