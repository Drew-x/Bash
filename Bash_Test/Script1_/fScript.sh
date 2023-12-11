
declare -a array


while read -r line;
do
    array+=($line)

done < IP_Test.txt

#printf "\n Out loop \n"

declare -A map
declare -A map2

for (( i=0; i< ${#array[@]} ; i++ )); do # {Start..Condition..increment}
#for (( i=0; i<= 1 ; i++ )); do   
    if [[ -z ${array[$i]} ]]
     then
       
        break;
    fi
    


    readarray -td, temp <<< ${array[$i]}; declare -a temp  
  

    if [ -v map[${temp[0]}] ] ; then
   
        map[${temp[0]}]=$((${map[${temp[0]}]}+1))
        map2[${temp[0]}]="${map2[${temp[0]}]} ${temp[2]}"
    else
      
        map[${temp[0]}]=1
        map2[${temp[0]}]="${temp[2]}" 
    fi


done


declare -a key

for j in "${!map[@]}"; do

    if (( map["${j}"]>1 )) ; then
        
        key+=("$(echo "${j} ")") 
    fi
 
done   



#+++++++++++++++++++++++++++++++++


for j in ${key[@]}; do

    #if (( map2["${j}"]>1 )) ; then
        echo "${j} => ${map2["${j}"]}"
         
    #fi
 
done   