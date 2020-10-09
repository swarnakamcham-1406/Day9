#! /bin/bash -x

echo "Welcome to the Employee Wage Computation "

IS_PART_TIME=1
IS_FULL_TIME=2
EMP_RATE_PER_HR=20
MAX_HRS_IN_MONTH=50
NUM_WORKING_DAYS=20

declare -A dailyWages

totalEmpHr=0
totalWorkingDays=0

function getworkinghour(){

local empHrs=0;

         case $1 in
            $IS_FULL_TIME )
                              empHrs=8
                ;;
            $IS_PART_TIME )
                              empHrs=4
                ;;
            * )
                           empHrs=0
                ;;
         esac
echo $empHrs

}


while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
      ((totalWorkingDays++))
      employeeCheck=$((RANDOM%3))

      empHrs=$( getworkinghour $employeeCheck )

      totalEmpHR=$((totalEmpHR+empHrs))
      dailywages["Day_$totalWorkingDays"]=$(( $empHrs*$EMP_RATE_PER_HR ));
done
salary=$(($EMP_RATE_PER_HR*$totalEmpHR))
echo "the salary is $salary";
echo ${!dailywages[@]};
echo ${dailywages[@]};

