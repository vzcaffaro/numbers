#! /bin/bash
#numbers.sh
#Vinny Caffaro
echo "Please enter a positive number between 1 and 9. "
read NUMBER
while echo $NUMBER | egrep -v "^(1-9)$" > /dev/null 2>&1
do
	echo "You must enter a positive number between 1 and 9. "
	echo "Please try again. "
	read NUMBER
done

I=1
while [ "$I" -le "$NUMBER" ]
do
	if [ "$((I%2))" -eq 0 ]
	then
		echo "$I Even"
	else
		echo "$I Odd"
	fi
	I=$(($I+1))
done
echo "Thank you! "
