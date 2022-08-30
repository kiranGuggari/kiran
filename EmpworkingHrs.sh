#!/bin/bash -x

perHourSalary=20;
workingHour=0;
totalWorkingHour=0;
day=1;
while [[ $day -le 20 && $totalWorkingHour -lt 40 ]]
do
         isPresent=$((RANDOM%3));
         case $isPresent in
                 0)
                 #echo "Empioyee is absent";
                 workingHour=0;
                 ;;

                 1)
                 #echo "Employee is present";
                 workingHour8;
                 ;;

                 2)
                 #echo "Emoloyee is working as part time";
                 workingHour=4;
                 ;;
esac
totalWorkingHour=$(($totalWorkingHour + $workingHour));
if [ $ totalWorkingHour -gt 40 ]
then
                 totalWorkingHour=$((totalWorkingHour - $workingHour));
                 break;
fi
salary=$(($perHourSalary * $workingHour));
totalSalary=$(($totalSalary + $salary));
((day++));
done

echo "Employee has $totalSalary $in a month (total working Hour :$totalWorkingHour)";
