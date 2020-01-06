#! /usr/bin/env bash
#File:guesinggame.sh

function guess {

	while [[ true ]]
do
	echo "Guess the no. of files in the current directory:"
	read choice
	if [[ "$choice" =~ ^[0-9]+$ ]]
	then
		count=$(ls -1a | wc -l)
		if [[ $choice -eq $count ]]
		then
			echo "Congratulations... Correct Guess!!!"
			break
		elif [[ $choice -gt $count ]]
		then	
			echo "Your guess was too high."
		else
			echo "Your guess was too low."
		fi
	else
		echo "Please provide integer."
	fi
		
done	

}

guess
