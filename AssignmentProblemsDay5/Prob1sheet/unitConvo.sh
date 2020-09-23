#!/bin/bash -x

echo "a."

echo "If 1 foot is equal to 12 inches then 42 inches in feet is "$((42/12));

echo "Recangular Plot of 60 feet x 40 feet in meters is " $(( 60 / 3 )) " x " $(( 40 / 3 )) " Meters approximately";

echo "Area of 25 such plots is : " $(( ((60/3)) * ((40/3)) )) " sqmt";
