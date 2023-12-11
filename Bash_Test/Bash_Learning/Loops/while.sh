
n=1

while [ $n -le 10 ]; do
    
    echo " $n "

   # n=$(( n+1 ))
    (( n++ ))
done

printf " \n Using (()) \n"
while (( $n >= 1 )); do
    
    echo " $n "

   # n=$(( n+1 ))
    (( --n ))
done