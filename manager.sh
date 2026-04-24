while true; do
    echo "-----"
    echo "1. Add Student"
    echo "2. Show Students"
    echo "3. Search Student"
    echo "4. Exit"
    echo "-----"
    read -p "Select an option: " opt

    if [ "$opt" == "1" ]; then
        read -p "Enter name: " name
        read -p "Enter age: " age
        if [ "$age" -lt 18 ]; then
            echo "Too young, not allowed."
        elif [ "$age" -gt 60 ]; then
            echo "Too old, not allowed."
        else
            echo "$name - Age: $age" >> $students.txt
            echo "Student added."
        fi
    elif [ "$opt" == "2" ]; then
        echo "--- Student List ---"
        cat $students.txt
    elif [ "$opt" == "3" ]; then
        read -p "Search name: " searchname
        if grep -q -i $searchname $students.txt; then
            grep -i $searchname $students.txt 
    else
            echo "Not Found"
        fi
    elif [ "$opt" == "4" ]; then
        break
    else
        echo "Invalid option."
    fi
done
