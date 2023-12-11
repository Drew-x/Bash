declare -a array

while read -r line;
do
    array+=("$(echo "$line")")
done < IP_Test.txt


#print array
for i in "${array[@]}"
do
    echo $i
done 