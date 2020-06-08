README.md:
	touch README.md
	echo "# The Guessing Game" > README.md
	echo "Date time at which **make** was run: " >> README.md
	date "+%d/%m/%Y %H:%M:%S" >> README.md
	echo "" >> README.md
	echo "The number of lines of code contained in **guessinggame.sh**:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
