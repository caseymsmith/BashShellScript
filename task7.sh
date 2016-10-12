#Calculates factorial of given number by using a while loop. 
#The shell accepts one integer argument as a parameter and calculates
#the factorial and displays the result. 


#!/bin/sh

n=0
on=0
fact=1

echo -n "Enter a number to find the factorial: "
read n

on=$n

while [ $n -ge 1 ]
do
        let 'fact=fact*n'
        let n--
done

echo "Factorial for $on is $fact"
exit 0
