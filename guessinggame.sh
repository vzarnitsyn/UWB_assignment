number_of_files=$(ls | wc -l)

echo  "Please, guess how many files are in current directory and type the number"
read response
while  [[ ! $response =~ ^[-,0-9][0-9]*$ ]]
do
echo "You did not type a number"
echo  "Please, guess how many files are in current directory  and type the number"
read response
done

while [[ $response -ne $number_of_files ]]
do 
  if [[ $response -lt $number_of_files ]]
  then
   echo "You number is smaller than number of files"
  else
   echo "You number is bigger than number of files"
  fi
echo  "Please, guess how many files are in current directory  and type the number"
read response

done

echo  "You finally guessed it right :$number_of_files"
