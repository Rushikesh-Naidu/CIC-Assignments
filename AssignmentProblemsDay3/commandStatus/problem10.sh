#!/bin/bash -x

hello
status_hello=`echo $?`;

if [[ ! $status_hello -eq 0 ]]
then
	echo "Hello Command Did Not Execute Successfully";
else
	echo "Hello Command Executes Successfully";
fi

ls
status_ls=`echo $?`;
if [[ ! $status_ls -eq 0 ]]
then
	echo "ls Command Did Not Execute Successfully";
else
    echo "ls Command Executes Successfully";
fi
