#!/bin/bash 
shopt -s extglob
echo "Welcome to User Registration."
read -p "Enter First name minimum 3 character: " firstname
read -p "Enter Last name minimum 3 character: " lastname
read -p "Enter email id : " email
emailPattern="^[A-Za-z]{3,}([.|+|_|-]?[A-Za-z0-9]+)?[@][A-Za-z0-9]+[.][A-Za-z]{2,4}([.][A-Za-z]{2,4}+)?$"
namePattern="^[A-Z]{1}[a-z]{2,}$"
name="firstname"
name2="lastname"
name3="email"
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
