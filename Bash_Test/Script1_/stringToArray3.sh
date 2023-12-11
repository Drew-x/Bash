
declare -a array

# Creates array like java array list
# Must take into account empty values 
while read -r line;
do
    array+=("$(echo "$line")")

done < Script1_/IP_Test.txt

printf "\n Out loop \n"

declare -A map
declare -A map2

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
    # echo ${temp[1]}
    # echo ${temp[0]}
    # echo ${temp[2]}
    #printf " \n NEW \n"

    #map+=("$(echo "${temp[0]}")")

    if [ -v map[${temp[0]}] ] ; then
      #  echo " $holder exists"
        map[${temp[0]}]=$((${map[${temp[0]}]}+1))
        map2[${temp[0]}]="${map2[${temp[0]}]} ${temp[2]}"
    else
       # map[${holder}]=1
        map[${temp[0]}]=1
        map2[${temp[0]}]="${temp[2]}" 
    fi

    #map[${temp[0]}]=${temp[2]}

    #if it exist count it 

done

#ALL keys
#echo "${!map2[@]}"

#ALL Values 
#echo "${map2[@]}"

for j in "${!map2[@]}"; do

# if (( map["${j}"]>1 )) ; then
 echo "${j} => ${map2[${j}]}"
# fi
 
done   


#+++++++++++++++++++++++++++++++++



# for i in "${array[@]}"; do
#     echo "IP: "$i 
    
#     holder=$i
#    # echo "HOLDER: "$holder
#     #CHECKER
#     #[ -v map["${holder}"] ] && echo " $holder exists"
    
#     if [ -v map["${holder}"] ] ; then
#         echo " $holder exists"
#         map["${holder}"]=$((${map["${holder}"]}+1))
#     else
#         map["${holder}"]=1
#     fi

    

# done

# #ALL keys
# echo "${!map[@]}"

# #ALL Values 
# echo "${map[@]}"


# echo ""
# echo OUTPUT
# echo ""


# for j in "${!map[@]}"; do

# if (( map["${j}"]>1 )) ; then
# echo "${j} => ${map[${j}]}"
# fi
 
# done    
