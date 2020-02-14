echo "Welcome to User Registration"
shopt -s extglob
read -p  "Read User name & last name : " userName userLastName 
read -p "Enter you Email address: " userEmail
name="^[A-Z]{1}[a-zA-Z]{3,}$"
lastName="^[A-Z]{1}[a-zA-Z]{3,}$"
email="^[a-zA-Z]{3,}[.]*{1}[a-zA-Z]*{3,}[@]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,3}[.]*{1}[a-zA-Z]*{2,3}$"
if [[ $userName =~ $name && $userLastName =~ $lastName ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
if [[ $userEmail =~ $email ]]
then 
echo "Valid"
else
echo "Invalid"
fi
