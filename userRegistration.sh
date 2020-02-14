shopt -s extglob
echo "Read user name"
read userName
name="^[A-Z]{1}[a-zA-Z]{3,}$"
if [[ $userName =~ $name ]]
then
	echo "Valid"
else
	echo "Invalid"
fi
