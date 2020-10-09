#! /bin/bash -x

echo "Welcome to the Employee Wage Computation "
is_part_time=1;
is_full_time=2;
max_hrs_in_month=100;
emp_rate_per_hr=20;
num_working_days=20;

totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyWage;

function getWorkHrs() {

local $empCheck=$1

case $empCheck in

$is_full_time)
                empHrs=8
                   ;;
$is_part_time)
                empHrs=4
                  ;;
*)
                empHrs=0
                 ;;
esac

echo $empHrs

}

function getEmpWage() {

local empHrs=$1

echo $(($empHr*$emp_rate_per_hr))

}
while [[ $totalEmpHrs -lt $max_hrs_in_month && $totalWorkingDays -lt $num_workin_days ]]
do

 ((totalWorkingDays++))
empcheck=$((RANDOM%3));
empHrs="$( getWorkHrs+$empHrs )"
totalEmpHrs=$(($totalEmpHrs+$empHrs))
day="Day"
dailyWage["Day" $totalWorkingDays]="$( getEmpWage $empHrs )"

done

totalSalary=$(($totalEmpHrs*$emp_rate_per_hr));
echo ${dailyWage[@]}
echo ${!dailyWage[@]}

