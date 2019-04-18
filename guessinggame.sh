#!/usr/bin/env bash
# File: guessinggame.sh

number_of_files=$(ls | wc -l)
echo  "Please, guess how many files are in current directory and type the number"


function promptcall {
 read response
 while  [[ ! $response =~ ^[-,0-9][0-9]*$ ]]
 do
  echo "You did not type a number. Please type a valid number"
  read response
 done
}

promptcall

while [[ $response -ne $number_of_files ]]
do 
  if [[ $response -lt $number_of_files ]]
  then
   echo "Your number is too small"
  else
   echo "Your number is too big"
  fi
promptcall
done

echo " Congratulations !!!"
echo  "You finally guessed it right :$number_of_files"
