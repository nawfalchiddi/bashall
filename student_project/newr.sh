echo "give me a number"
read number
if [ $number -gt 10 ]
then
	echo "big number"
elif [ $number -eq 10 ]
then 
	echo "small number"
else 
	echo "small number"
fi
