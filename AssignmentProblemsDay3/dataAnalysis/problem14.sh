#!/bin/bash -x

echo "1: The EmployeeNames and TotalPay whose BasePay is greater than 10000";
cat data.csv | awk '{ if ($4 > 10000) print $2"    "$7}';

echo -e "\n";
echo "2: The aggregate total of employees whose job title is CAPTAIN:";
cat data.csv | grep -i captain | awk '{sum=sum+$7} END{print sum}';

echo -e "\n";
echo "3: The Job title and over time pay of employees whose OverTimePay is in between 7000 and 10000";
cat data.csv | awk '{ if ($5 > 7000 && ($5 < 10000)) print $3"    "$5}';

echo -e "\n";
echo "4: The Average BasePay of all employees is";
cat data.csv | awk '{avg=avg+$4} END{print avg/NR}';
