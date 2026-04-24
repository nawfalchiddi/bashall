while true;
do
	echo "______"
	echo "1. add a student"
	echo "2. show the liste of students"
	echo "3. search for a name"
	echo "4. exit"
	echo "______"
	read -p "enter a number:" opt
	if [ $opt = 1 ]
	then
		read -p "enter a name: "  name
		read -p "enetr your age : " age
		if [ $age -lt 18 ]
		then
			echo "you are too young"
		else
			echo "$name - Age: $age - Role: student" >> students.txt
			echo "the students has been added."
		fi
	elif [ "$opt" == "2" ];
	then
		echo "---students liste---"
		cat students.txt
	elif [ $opt = 3 ];
	then
		read -p "enter the name: " searchname
		if grep -q $searchname students.txt ; then
			grep $searchname students.txt
	else
		echo "not found"
		fi
	elif [ $opt = 4 ];
	then
		echo "exit.."
		break
	else
		echo "number invalide"
	fi
done
