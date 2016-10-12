#Bash shell script that searches for a word in a file as follows: 
#	-Asks user for a directory in which to find the file.
#	If not a valid directory, quits with appropriate error message.
#	Asks user for the name of a readable file in that directory, 


#! /bin/sh

echo -n "Please enter the directory you want to find the file in: "
read directory

#check if directory isn't a directory
if [ ! -d "$directory" ]
then
        echo "$directory does not exist."
        exit 1;

else

#when the directory is real, we move there. 
cd "$directory"
max=3 
count=0
while [  $count -lt $max ]; do #loop to do while the user has not readed the max of 3 failed attempts.
        echo "You are now in $directory. Please enter the readable file name in $directory: "
        read file
   if [[ -r $file ]] #check if the file is a file 
        then
        echo "Please enter the word you want to find in $file: "
        read word
        
        if [ ! -z $(grep "$word" "$file") ];
                then 
                echo "FOUND!"
                exit 0; 
                else
                echo "NOT FOUND"
                exit 4;
                fi
        else 
        echo "The file name you entered was not readable."
   fi
   let count=count+1
done
echo "$file is not a readable file. You have reached the maximum 3 failed attempts."
exit 3;

fi
