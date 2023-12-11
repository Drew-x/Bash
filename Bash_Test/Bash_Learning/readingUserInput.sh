#!/bin/bash
echo "Enter number"
read num1

echo "Number: $num1" 


#Multiple Variables
echo "Enter 3 names"
read name1 name2 name3 # NOTE: input should be in same line seperated with a whitespace

echo "Names: $name1 $name2 $name3 "


# Using Read -p flag

read -p 'Username: ' user # adds text, saves using echo
read -sp 'Password: ' pass # -s flag allows to hide text 
echo "USER:  $user"
echo "PASS: $pass"


# Saving into array

echo "Enter into List"
read -a array # this way has to be all in one line
echo "List[0] ${array[0]} List[1] ${array[1]}" 


# NOTE- $REPLY : defualt variable name

echo "random"
read
echo "R: $REPLY"
