filesNum=$(ls -1 | wc -l)

function userInput {
	echo "How many files are in the current directory?"
	read response
}

function checkGuess {
	if [[ $response =~ [^0-9] ]]
    	then
          echo "Sorry only positive integers!"
	  response=-1
	elif [[ $response -gt $filesNum ]]
	then
	  echo "Guess is too high. Try smaller!"
	elif [[ $response -lt $filesNum ]]
	then
	  echo "Guess is too small. Try bigger!"
	else
	  echo "Your guess is correct. There are/is $filesNum file(s) in the current directory!"
	fi
}

while [[ $filesNum -ne $response ]]
do
	userInput
	checkGuess
done
