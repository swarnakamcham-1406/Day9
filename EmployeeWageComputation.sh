#! /bin/bash -x

echo "Welcome to the Employee Wage Computation "

#! /bin/bash -x
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$(($RANDOM%3));
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

