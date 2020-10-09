#! /bin/bash -x

echo "Welcome to the Employee Wage Computation "

isPresent=1;
randomCheck=$((RANDOM%2));

if [ $isPresent -eq $randomCheck ]
then

echo "employee is present";

else

echo "employee is absent ";

fi

