echo "what is your name"
read name
echo "how old are you"
read age
if [ $age -lt 18 ];
then
	echo " you are too young"
else
       echo "what is your role"
       read role
if [ $role == "admin" ];
then
	echo "full access is granted"
elif [ $role == "user" ];
then
	echo "access is limited"
elif [ $role == "guest" ];
then
	echo "guest access only"
else
	echo "unknown role"
fi
fi
