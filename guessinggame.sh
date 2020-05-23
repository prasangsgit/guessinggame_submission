echo "Guess the number of files (including Hidden files and folders) in the current directory:"
count=$(ls -A |wc -l)

function guess {
	read answer
	if [[ $answer =~ [^0-9] ]]
		then
			echo "Please Enter a VALID number.."
		elif [[ $answer -lt $count ]]
		then 
			echo "Your guess is LESS than the count.. Guess again."
		elif [[ $answer -gt $count ]]
		then 
			echo "Your guess is MORE than the count.. Guess again."
		elif [[ $answer -eq $count ]]
		then 
			echo "Its a Correct Guess. Congrats.. !! :) "
	fi

}

while [[ $answer != $count ]]
do
	guess
done

