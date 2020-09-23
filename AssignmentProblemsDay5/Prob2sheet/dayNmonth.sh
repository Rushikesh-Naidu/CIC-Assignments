#!/bin/bash -x

read -p "Enter the day in two digit mumber: " Day;
read -p "Enter the month in two digit number: " Month;

choice=`date +"%B %d" -d 0000-$Month-$Day`;
echo "Your choice is $choice..!"
date1=`date +"%B %d" -d 0000-03-20`;
date2=`date +"%B %d" -d 0000-06-20`;

testDate1=`date -d"${date1}" +%m%d`;
testDate2=`date -d"${date2}" +%m%d`;
testChoice=`date -d"${choice}" +%m%d`;

echo "Is the date you have choosen between $date1 and $date2..?";
echo -e "\n";

if [[ "$testChoice" > "$testDate1" ]] && [[ "$testChoice" < "$testDate2" ]]
then
	echo "Yes it is...!";
else
	echo "No it is not...!";
fi
