#!/bin/bash -x

read -p "Enter the folder name: " folder;

mkdir $folder;
status=`echo $?`;

if [[ ! $status -eq 0 ]]
then
	echo "File Exists..!";
else
	echo "The folder $folder is created successfully..!";
fi
