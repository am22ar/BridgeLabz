#!/bin/bash -x
isPartTime=1
isFullTime=2
maxHrsInMonth=4
EmpRatePerHour=20
NumWorkingDays=20

totalEmpHrs=0
totalworkingDays=0
function getWorkingHours(){
	case $1 in
	$isFullTime)
	workHours=8 ;;
	$isPartTime)
	workHours=4 ;;
	*)
	workHours=0 ;;
	esac
	echo $workHours
}
while [[ $totalWorkingHours -lt $maxHrsInMonth &&
	 $totalWorkingDays -lt $NumWorkingDays ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkingHours=$(( $totalWorkingHours + $workHours ))
done
	totalSalary=$(( $totalWorkingHours * $EmpRatePerHour))
