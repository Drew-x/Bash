
declare -a array

# Creates array like java array list
# Must take into account empty values 

while read -r line;
do
    array+=("$(echo "$line")")

done < Script1_/IP_Test.txt


printf "\n Out loop \n"



# Prints items in array and then breaks them to sub arrays 
for (( i=0; i< ${#array[@]} ; i++ )); do # {Start..Condition..increment}
#for (( i=0; i<= 1 ; i++ )); do   
    if [[ -z ${array[$i]} ]]
     then
        #echo in ----------------------
        break;
    fi
    

     #printf " i = $i - item: ${array[$i]} \n" 

    readarray -td, temp <<< ${array[$i]}; declare -a temp  
    echo ${temp[1]}
    echo ${temp[0]}
    echo ${temp[2]}
    printf " \n NEW \n"
done

