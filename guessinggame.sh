#!/usr/bin/env bash
# File: guessinggame-sh

# create variable for number of files in directory
lines=$(ls -l | wc -l)
let files=$lines-1
guess=0

#explain game and get user input

  echo ""
  echo "This program will ask you to guess the number of files in the current directory."
  echo "You must be exact and you will be asked to keep entering guesses until you are correct."

while [[ $guess -ne $files ]]
do
  echo ""
  echo "Guess how many files are in the current directory and press Enter:"
  read  guess
     if [[ $guess -lt $files ]]
     then 
       echo ""
       echo "Your guess is too low.  Try again"
     elif [[ $guess -gt $files ]]
     then
       echo ""
       echo "Your guess is too high.  Try again"
     else [[ $guess -eq $files ]]
       echo ""
       echo "Congratulations!  You guessed correctly!"
     fi
done
