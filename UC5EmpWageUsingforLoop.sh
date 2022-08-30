#!/bin/bash -x
isPartTime=1
isFullTime=2
empRatePerHr=20
NumWorkingDays=20
totalSalary=0
for (( day=1; day<=20; day++ ))
do
	empCheck=$((RANDOM%3))
	case $empCheck in
		$isFullTime)
			empHrr=8
			;;
		$isPartTime)
			empHrs=4
			;;
			  *)
			empHrs=0
			;;
	esac
done
salary=$(( $empHrs * $empRatePerHr ))
totalSalary=$(( $totalSalary + $salary))
