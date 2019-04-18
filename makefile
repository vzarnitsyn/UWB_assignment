all: README.md

README.md: guessinggame.sh
	echo "## Guess the number, game" > README.md
	echo "### You should guess correctly the number of files" >> README.md
	date +"Make run on %M-%d-%y at %T" >> README.md
	echo "In guessinggame.sh there are :" >> README.md
	(wc -l guessinggame.sh | egrep -o "[0-9]+") >> README.md
	echo "lines." >> README.md

clean:
	rm README.md
