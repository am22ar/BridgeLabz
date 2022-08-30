#!/bin/bash -x
isPresent=1
empCheck=$((RANDOM%2))
if [ $isPresent -eq $empCheck ]
then
	empRatePerHr=20
	empWorkHr=8
	salary=$(( $empRatePerHr * $empWorkHr ))
else
	salary=0
fi

