
declare -a array

while read -r line;
do
    array+=("$(echo "$line")")

done < Script1_/IP_Test.txt



#print array
for i in "${array[@]}"
do
   echo $i
done 

printf "\n Out loop \n"

echo ${array[0]}
echo ${array[1]}
echo ${array[2]}
echo ${array[3]}


