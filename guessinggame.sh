# file: guessinggame.sh
# User is prompted to guess how many files exist in the current directory (excluding folders and hidden)


function  listfiles {
	ls -l | egrep -v "^d.*|total.*" | wc -l
}

files=$(listfiles)

echo  'Guess how many files there are in your current directory! Enter a number:'

read input

while [[ $input -ne $files ]]
do
	if [[ $input -lt $files ]]
	then
	echo 'This is too low! Try again:'
	read input
	else
	echo 'This is too high! Try again:'
	read input
	fi
done

if [[ $input -eq $files ]]
	then
	echo 'Great!! You guessed it!!'
fi

