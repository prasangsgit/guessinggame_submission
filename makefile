all:README.md

README.md:
	echo "# The Unix WorkBench - Assignment" >README.md
	echo "## GuessingGame" >> README.md
	echo "Created on: " >> README.md
	date >> README.md
	echo "The number of lines in the guessinggame.sh :" >> README.md
	cat guessinggame.sh |wc -l >> README.md

clean:
	rm README.md
	
