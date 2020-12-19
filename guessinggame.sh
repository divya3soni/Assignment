#!/usr/bin/env bash

echo "[Guessing Game Program by Divya]"

function askMe {
	echo "Enter no. of files in the directory:"
	read userValue
    files=$(ls -1 | wc -l)
}

askMe

while [[ $userValue -ne $files ]]
do
	if [[ $userValue -lt $files ]] 
	then
		echo "Too low."
	else
		echo "Too high."
	fi
	askMe
done

echo "Perfect! It is the correct answer"
echo "---" && ls -1