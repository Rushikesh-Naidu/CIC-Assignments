#!/bin/bash -x

read -p "Enter a number to start the conversions: " n;

awk 'BEGIN { print "feetToInch", ($n*12) }'

inchToFeet=`echo | awk '{print n/12}'`;

feetToMeter=`echo - | awk '{print n*0.30}'`;

meterToFeet=`echo - | awk '{print n/0.30}'`;

echo "$n Feet = $feetToInch Inches";

echo "$n Feet = $feetToMeter Meters";

echo "$n Inch = $inchToFeet Feet";

echo "$n Meters = $meterToFeet Feet";
