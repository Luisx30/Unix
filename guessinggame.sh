num=$(ls | wc -l)

function gFun {
	while [[ $num -ne $inp ]]
	do
	add=$((add+1))
	echo "attempt number: $add"
	read inp
	if [[ $inp -eq $num ]]
	then
		echo "**Great Job**"
	else
		if [[ $inp -gt $num ]]
		then
			echo "**Your number is too high**"
		else
			echo "**Your number is too low**"
		fi
	fi
	done
}
echo "Let play a game"
echo "There are a specific number of files in the directory"
echo "So, try to guess how many files are in it, good luck!"
gFun
