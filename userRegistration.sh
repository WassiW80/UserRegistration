#!/bin/bash 
shopt -s extglob
echo "Welcome to User Registration."
read -p "Enter First name minimum 3 character: " firstname
read -p "Enter Last name minimum 3 character: " lastname
name="firstname"
name2="lastname"
function validateFirstname() {
	namePattern="^[A-Z]{1}[a-z]{2,}$"
	if [[ $1 =~ $namePattern ]]
	then
		echo "$2 valid"
	else
		echo "$2 invalid"
	fi
}
validateFirstname $firstname $name
validateFirstname $lastname $name2
