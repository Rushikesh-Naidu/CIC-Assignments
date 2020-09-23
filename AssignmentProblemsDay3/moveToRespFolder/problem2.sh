#!/bin/bash -x

for files in `ls *.txt`
do
	folder=`echo $files | awk -F. '{print $1}'`;
	mkdir $folder;
	mv $files $folder;
	echo $folder;
done
