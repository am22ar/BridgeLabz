#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHour=20
empCheck=$((RANDOM%3))
if [ $isPartTime -eq $empCheck ]
then
	empWorkHr=4
elif [ $isFullTime -eq $empCheck ]
then
	empWorkHr=8
else
	empWorkHr=0
fi
salary=$(( $empRatePerHour * $empWorkHr ))
