#Shell script using for loop to print the following pattern:
#       1
#       22
#       333
#       4444
#       55555


#!/bin/bash
i=5
for i in $(seq 1 5); #desired range of numbers (num sequence)
do
        num=''
        for (( counter=0; counter < i; counter++ ));
        #loop helps with how many times to print 
        #the number from the sequence. 
        do
        num="$num$i" #declaration of num based on i
        done
        echo $num #within loop, printing number based on seq
done
