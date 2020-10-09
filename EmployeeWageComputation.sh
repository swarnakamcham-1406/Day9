#! /bin/bash -x

echo "Welcome to the Employee Wage Computation "

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
MAX_HRS_IN_MONTH=100;
numWorkingDays=20;

totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $numWorkingDays ]]
do

        ((totalWorkingDays++))

   empCheck=$((RANDOM%3));
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

        totalEmpHr=$((totalEmpHr+empHrs))
done

salary=$((empRatePerHr*totalEmpHr))
echo "the salary is $salary"
