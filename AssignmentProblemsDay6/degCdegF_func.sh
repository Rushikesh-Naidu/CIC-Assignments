#!/bin/bash

degreeCelsius()
{
read -p "Enter the Fahrenheit to convert to Celsius: " degF;
if [[ $degF -ge 32 ]] && [[ $degF -le 212 ]]
then
#5/9=0.55
degC=`awk 'BEGIN{ print ('$degF' - 32 ) * 0.55 }'`;
echo "The $degF°F in Celsius is $degC°C"
elif [ $degF -lt 32 ]
then
echo "You entered a value below freezing point"
elif [ $degF -gt 212 ]
then
echo "You entered value above boiling point"
fi

}

degreeFahrenheit()
{

read -p "Enter the Celsius to convert to Fahrenheit: " degC;
if [[ $degC -ge 0 ]] && [[ $degC -le 100 ]]
then
#9/5=1.8
degF=`awk 'BEGIN {print ('$degC'*1.8)+32}'`;

echo "The $degC°C in Fahrenheit is $degF°F"
elif [ $degC -lt 0 ]
then
echo "You entered value below freezing point"
elif [ $degC -gt 100 ]
then
echo "You entered value above boiling point"
fi
}

echo "Temperature Conversion!!"

echo "What conversion are you looking for?"
echo "Enter"
echo "1] Celsius to Fahrenheit"
echo "2] Fahrenheit to Celsius"
read n

case $n in
1)
degreeFahrenheit
;;

2)
degreeCelsius
;;
*)
echo "Invalid Input..!"
esac
