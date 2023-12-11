
declare -a array

# Creates array like java array list
# Must take into account empty values 

while read -r line;
do
    array+=("$(echo "$line")")

done < Script1_/IP_Test.txt



#print array
# for i in "${array[@]}"
# do
#    echo $i
# done 

printf "\n Out loop \n"

# Prints items in array and then breaks them to sub arrays 
for (( i=0; i<= ${#array[@]} ; i++ )); do # {Start..Condition..increment}
   
    if [[ -z ${array[$i]} ]]
     then
        #echo in ----------------------
        break;
    fi

     printf " i = $i - item: ${array[$i]} \n" 
done

echo size ${#array[@]}

# for i in ${array[@]}; do

#     echo "IP: "$i 

  
#       if [[ -z ${array[$i]} ]]
#      then
#         echo in
#     fi

# done




# echo ${array[0]}
# echo ${array[1]}
# echo ${array[2]}
# echo ${array[3]}
