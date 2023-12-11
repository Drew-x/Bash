declare -A hashmap
#hashmap["key"]="value"
#hashmap["key2"]="value2"


echo $hashmap
echo ${hashmap[key]}

file=$(cat IP_Test.txt)

for i in $file
do
    echo hashmap[$i]
    echo Val: ${hashmap[$i]}
    #hashmap[$i] = 1

 if [[ -z ${hashmap[$i]} ]];
 then
    echo word is equal empty
    hashmap[$i]=1

    else

        hashmap[$i]= ${hashmap[$i]} + 1


    # Nesting bottom block
#elif [[ "$word" != "word" ]];
#   then
#      echo word is not equal to asdasd1
fi

done 

if [[ ${hashmap["key"]} == ${hashmap[1]} ]];
 then
    echo word is equal to word
    # Nesting bottom block
#elif [[ "$word" != "word" ]];
#   then
#      echo word is not equal to asdasd1
fi

#while read ip; do   
    
#   echo hashmap[$ip]=1



#done < IP_Test.txt

#for key in ${!hashmap[@]}; do echo $key; done
#for value in ${hashmap[@]}; do echo $value; done


