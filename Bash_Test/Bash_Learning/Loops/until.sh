
# Until is like while loop
# Difference is that until loops while false 
# Think of it as while negated 

n=1

until [ $n -gt 10 ]
 do
    
    echo " $n "

   # n=$(( n+1 ))
    (( n++ ))
done

printf " \n Using (()) \n"
until (( $n < 1 ))
 do
    
    echo " $n "

   # n=$(( n+1 ))
    (( --n ))
done 
