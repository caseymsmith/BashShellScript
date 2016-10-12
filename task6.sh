#Shell script asking user to input a number 5-9. The output is a pyramid of number
#starting at 1 and ending with the number you select. There is a condition in the case 
#you make an invalid selection

#!/bin/sh

max=0

echo "Please select a number: 5 6 7 8 9"
read max
if ! [ $max -ge 5 -a $max -le 9 ] ; then
   echo "You made an invalid selection."
   exit 1
fi
clear
for ((x=1; x<=max; x++ ))
do
    for ((space=max; space>=x; space--))
    do
    printf " "
    done
    for ((num=1; num<=x; num++))
    do
    echo -n " $x" 
    done
echo ""
done
