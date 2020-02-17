echo "Welcome to User Registration"

shopt -s extglob

name="^[A-Z]{1}[a-zA-Z]{3,}$"
lastName="^[A-Z]{1}[a-zA-Z]{3,}$"
email="^[a-zA-Z]{3,}[.]*{1}[a-zA-Z]*{3,}[@]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,3}[.]*{1}[a-zA-Z]*{2,3}$"
mobileNumber="^[0-9]{2}[[:space:]][0-9]{10}$"
password="^[a-zA-Z]{8}$"

function validName()
{
if [[ $userName =~ $name && $userLastName =~ $lastName ]]
then
	echo "Valid Name and Last Name "
else
	echo "Invalid first letter must be capital "
fi
}

function validEmailAddress()
{
if [[ $userEmail =~ $email ]]
then 
echo "Valid Email Address"
else
echo "Invalid Email Address"
fi
}

function validMobileNumber()
{
if [[ $countryCodeMobileNumber =~ $mobileNumber ]]
then
	echo "Valid Mobile Number"
else
	echo "Invalid Mobile Number"
fi
}
function validPassword
{
if [[ $enterPassword  =~ $password ]]
then
   echo "Valid password"
else
   echo "Invalid password"
fi
}
function validPasswordCapital
{
if [[ ${#enterPasswordCapital} -ge 8 && "$enterPasswordCapital" == *[[:lower:]]* && "$enterPasswordCapital" == *[[:upper:]]* ]]
then
   echo "Valid password"
else
   echo "Invalid password"
fi
}
function validPasswordWithNumber
{
if [[ ${#enterPasswordNumber} -ge 8 && "$enterPasswordNumber" == *[[:lower:]]* && "$enterPasswordNumber" == *[[:upper:]]* && "$enterPasswordNumber" == *[0-9]* ]]
then
   echo "Valid password"
else
   echo "Invalid password"
fi
}
function validPasswordWithSpecialCharacter
{
if [[ ${#enterPasswordSpecial} -ge 8 && "$enterPasswordSpecial " == *[[:lower:]]* && "$enterPasswordSpecial" == *[[:upper:]]* && "$enterPasswordSpecial" == *[0-9]* && "$enterPasswordSpecial" == *['!'@#\$%\&*_-]* ]]
then
   echo "Valid password"
else
   echo "Invalid password"
fi
}

read -p  "Read User name & last name : " userName userLastName 
validName
read -p "Enter you Email address: " userEmail
validEmailAddress
read -p "Enter country code with mobile number : " countryCodeMobileNumber
validMobileNumber
read -p "Enter your Password : " enterPassword
validPassword
read -p "Enter your Password : " enterPasswordCapital
validPasswordCapital
read -p "Enter your Password : " enterPasswordNumber
validPasswordWithNumber
read -p "Enter your Password : " enterPasswordSpecial
validPasswordWithSpecialCharacter
