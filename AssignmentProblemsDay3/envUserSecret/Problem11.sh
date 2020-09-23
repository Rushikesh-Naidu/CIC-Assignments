#!/bin/bash -x

if [ `env | echo $USERSECRET` ]
then
	echo "Error";
else
	export USERSECRET=dH34xJaa23;
	secret=`env | echo $USERSECRET`;
	echo $secret;
fi
