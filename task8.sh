#Prints given numbers sum of all digits. The shell accepts one integer argument as a parameter.
#If number of argument is not one, the program displays and error message and exits. 

#!/bin/sh

if [ $# -ne 1 ]
then
    echo "You need to pass one numerical argument"
    exit 1
fi

n=$1
sum=0
digit=0
while [ $n -gt 0 ]
do
    digit=`expr $n % 10`
    sum=`expr $sum + $digit`
    n=`expr $n / 10`
done
    echo  "Sum of digit for number is $sum"
    
exit 0
