while true; do
    echo "=="
    echo " Student Management "
    echo "=="
    echo "1) Add Student"
    echo "2) Show Students"
    echo "3) Search Student"
    echo "4) Exit"
    read -p "Choose an option [1-4]: " choice

    if [ "$choice" == "1" ]; then
        read -p "Enter Name: " name
        read -p "Enter Age: " age
        if [ "$age" -lt 18 ] || [ "$age" -gt 50 ]; then
            echo "Error: Allowed age is between 18 and 100."
        else
            echo "$name - Age: $age" >> " $students.txt"
            echo "Student added."
        fi
    elif [ "$choice" == "2" ]; then
        echo "-- Student List --"
        cat " $students.txt"
    elif [ "$choice" == "3" ]; then
        read -p "Enter name to search:" name
        if grep -q "$sname" " $students.txt"; then
		grep "$name" " $students.txt"
else
	echo "not found"
	fi
    elif [ "$choice" == "4" ]; then
        break
    else
	    echo "Invalid option, please try again."
    fi
done
