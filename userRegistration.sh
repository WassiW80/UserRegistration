#!/bin/bash 
shopt -s extglob
echo "Welcome to User Registration."
#reading values from user
read -p "Enter First name minimum 3 character: " firstname
read -p "Enter Last name minimum 3 character: " lastname
read -p "Enter email id : " email
read -p "Enter Mobile Number : " mobileNumber
read -p "Enter password : " password

#pattern declaration for validation
emailPattern="^[A-Za-z]{3,}([.|+|_|-]?[A-Za-z0-9]+)?[@][A-Za-z0-9]+[.][A-Za-z]{2,4}([.][A-Za-z]{2,4}+)?$"
namePattern="^[A-Z]{1}[a-z]{2,}$"
mobilePattern="^([0-9]{1,3}[ ][0-9]{10})$"
passwordPattern="^[A-Za-z]{8,}$"

#name of pattern
name="firstname"
name2="lastname"
name3="email"
name4="mobile"
name5="password"

function validateUserData() {
	if [[ $1 =~ $3 ]]
	then
		echo "$2 valid"
	else
		echo "$2 invalid"
	fi
}

validateUserData $firstname $name $namePattern
validateUserData $lastname $name2 $namePattern
validateUserData $email $name3 $emailPattern
validateUserData "$mobileNumber" $name4 "$mobilePattern"
validateUserData $password $name5 $passwordPattern
