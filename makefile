# file: makefile
# this makefile produces the file README.md when run

README.md:
	echo "**Justo's Unix submission** created at" > README.md
	date >> README.md
	echo "  " >> README.md
	echo "Lines in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
