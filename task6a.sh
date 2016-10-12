#!/bin/sh

#top half loop
for ((x=1; x<=5; x++))
        do
        #loop to print *s 
        for ((y=1;y<=x; y++)) 
                do
                echo -n "*"
                done
        echo "" #next line
        done

#bottom half loop
for ((x=5; x>=1; x--))
        do
        #loop to print *s
        for ((y=1; y<=x; y++))
                do
                echo -n "*"
                done
        echo "" #next line
        done
