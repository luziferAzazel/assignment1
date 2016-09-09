#!/bin/bash

#give date a value
	date="$(ls -1)"
	#check if user type --AMPM with a if setting
	if [ "$1" == "--AMPM" ]; then
		while true; do
			clear # So that diiferent date can apear on the same line
			pm=$(date +"%r") # output the time in 12hours format 
			echo "klokka er <$pm> for 12 timers format"
			sleep 1
			done
	
	else # If nothing is typed, show the 24hours format
		while true; do 
			clear
			kl=$(date +"%T")
			echo "Klokka er: $kl"
			sleep 1
		done
	fi # To put an end on if 