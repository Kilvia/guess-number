#!/bin/bash

low=1
big=80

number=$(( $RANDOM % big + 1 ))

read -p "Guess a number between 1 and 80: " ans

while [ $ans -ne $number ]; do
	if [ $ans -lt $low ] || [ $ans -gt $big ]; then
	read -p "Ops! The number should be between 1 and 80. Try again: " ans
	elif [ $ans -lt $number ]; then
	read -p "Too low. Try again: " ans
	else
	read -p "Too high. Try again: " ans
	fi
done

echo "Congrats! You got the right number"

