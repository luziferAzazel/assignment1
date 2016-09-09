#!/bin/bash

case "$1" in  #Make a if case to check the user input
	S) #case for sum

		declare -i sum=0

		shift # so $1 doesn't show up
		
		for i in "$@"; do # check everything after user input $1
            ((sum += $i)) # here it sums all the inputs after $1
        	done 	# for loop is done
         echo  $sum # output the sum 
		;;
		# the rest is pretty much the same as the code over. 
		
 	P) # case for produkt
		 
 		declare -i produkt=1

 		shift

        for i in "$@"; do
            produkt=$((produkt * i))
     	   	done 
        echo  $produkt
        ;;		
	M) #case for Maximum
		
		declare -i max=$2 

		shift

        for i in "$@"; do
          	((i > max)) && max=$i
		 	done
		 echo $max
        ;;
	m) 	#case for minumum
	 	declare -i min=$2
	 	
	 	shift 

	     for i in "$@"; do
	        ((i < min)) && min=$i
	       done
	     echo $min
		;;
	*)
		exit 1
	esac 
