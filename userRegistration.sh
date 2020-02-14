echo "Welcome to User Registration"
shopt -s extglob
read -p  "Read User name & last name : " userName userLastName
name="^[A-Z]{1}[a-zA-Z]{3,}$"
lastName="^[A-Z]{1}[a-zA-Z]{3,}$"
if [[ $userName =~ $name && $userLastName =~ $lastName ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
