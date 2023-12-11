
declare -a array

# Creates array like java array list
# Must take into account empty values 
while read -r line;
do
    array+=("$(echo "$line")")

done < Script1_/IP_Test.txt

#printf "\n Out loop \n"

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

declare -a key

for j in "${!map[@]}"; do

    if (( map["${j}"]>1 )) ; then
        #echo "${j} => ${map[${j}]}"
        key+=("$(echo "${j} ")") 
    fi
 
done   

#echo ${key[@]}

#+++++++++++++++++++++++++++++++++


for j in ${key[@]}; do

    #if (( map2["${j}"]>1 )) ; then
        echo "${j} => ${map2["${j}"]}"
         
    #fi
 
done   