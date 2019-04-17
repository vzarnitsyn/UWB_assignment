all: README.md

README.md: guessinggame.sh
	echo "## Pear reviewed assignment" > README.md
	echo "### Class Unix Workbench at coursera" >> README.md
	echo "In guessinggame.sh there are:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "lines." >> README.md

clean:
	rm README.md
