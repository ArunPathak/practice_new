all: README.md

README.md: guessinggame.sh
	echo "# Guessing game"> README.md
	echo "*Date and Time* :" >> README.md
	date >> README.md
	echo "*No. of Lines of code in guessinggame.sh* :" >> README.md
	wc -l guessinggame.sh| egrep -o "[0-9]+" >> README.md
clean:
	rm -rf README.md
