declare -a array

while read -r line;
do
    array+=("$(echo "$line")")
done < /Bash_Learning/Script1_/IP_Test.txt


#print array
#for i in "${array[@]}"
#do
#    echo $i
#done 



declare -A map


for i in "${array[@]}"; do
    echo "IP: "$i 
    
    holder=$i
   # echo "HOLDER: "$holder
    #CHECKER
    #[ -v map["${holder}"] ] && echo " $holder exists"
    
    if [ -v map["${holder}"] ] ; then
        echo " $holder exists"
        map["${holder}"]=$((${map["${holder}"]}+1))
    else
        map["${holder}"]=1
    fi

    

done

#ALL keys
echo "${!map[@]}"

#ALL Values 
echo "${map[@]}"


echo ""
echo OUTPUT
echo ""


for j in "${!map[@]}"; do

if (( map["${j}"]>1 )) ; then
echo "${j} => ${map[${j}]}"
fi
 
done    
