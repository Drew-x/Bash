
# Read csv into array and output 

declare -a array

while read -r line;
 do
    array+=("$(echo "$line")")
done < TestData.txt


declare -a temp

for (( i=0; i< ${#array[@]}; i++)); do

    #readarray -td, temp <<< ${array[$i]}
    IFS=', ' read -r -a temp <<< ${array[$i]}
    echo ${temp[0]}
    echo ${temp[1]}
    echo ${temp[2]}    

done