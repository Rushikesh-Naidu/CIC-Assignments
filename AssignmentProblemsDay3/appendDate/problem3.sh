#!/bin/bash -x

files=`ls *.log.1`;

echo "List of files to rename are:"
echo $files;

for file in $files;
do base=`echo $file | awk -F. '{print $1}'`;
echo $base;
done

Date=`date +%d%m%y`;

echo -e "Date in ddmmyy format is: " $Date;

for base in $files;
do ext=$base-$Date.log.1; mv $base $ext;
echo $ext;
done
