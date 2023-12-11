

array=("test1" "test2" "test3")

echo " ${array[@]} "  # Prints all 

echo " ${array[0]} " # Prints element at index
echo " ${array[1]} " # Prints element at index

printf "\n"
# Print indexes of array

echo " ${!array[@]} "

echo " ${#array[0]} " # Prints index
echo " ${!array[1]} " # Prints index

# length of array 

echo "Size:  ${#array[@]} "

# Add to array

#NOTE: if we save test4 at array[5] and delete array[4] nothing happends 
#array[5]="test4"

array[4]="test4"
echo "${array[@]} "  # Prints all 


#overwrite value 
array[0]="test4"
echo "${array[@]} "  # Prints all 

#Remove item

unset array[4]
echo "${array[@]} "  # Prints all

printf "\n String as array \n"
#NOTE - Strings as array
# treated as one thing
# size is zero 

string=adsfafasdadsadf
echo "${string[@]} " #prints the whole string
echo "${string[0]} " #prints the whole string 
echo "${string[1]} " # prints nothing 
echo "${#string[@]} " # counted as one thing 