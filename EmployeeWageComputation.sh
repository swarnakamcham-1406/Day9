#! /bin/bash -x

echo "Welcome to the Employee Wage Computation "

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
MAX_HRS_IN_MONTH=100;
numWorkingDays=20;

totalEmpHr=0
totalWorkingDays=0
function getWorkHrs() {
local $empCheck=$1

case $empCheck in

   $isFullTime )
                  empHrs=12
                     ;;
   $isPartTime )

                  empHrs=8
                     ;;
      * )
                  empHrs=0

                     ;;
esac

        echo $empHrs

}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $numWorkingDays ]]
do

        ((totalWorkingDays++))
empCheck=$((RANDOM%3));
empHrs="$( getWorkHrs $empCheck )"
totalEmpHrs=$(($totalEmpHrs+$empHrs))

done
totalSalary=$(($totalEmpHrs+$empRatePerHr));



