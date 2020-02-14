#!/bin/bash -x
shopt -s extglob
echo "Welcome to User Registration."
function validateFirstname() {
	read -p "Enter user name minimum 3 character: " firstname
	firstnamePattern="^[A-Z]{1}[A-Za-z]{2,}$"
	if [[ $firstname =~ $firstnamePattern ]]
	then
		echo valid
	else
		echo invalid
	fi
}
validateFirstname
