
n=1

while [ $n -le 10 ]; do
    
    echo " $n "
     # n=$(( n+1 ))
    (( n++ ))

    # USing sleep - pauses for that amount

    sleep 1 

    #NOT WORK
    # gnome -terminal & 


done


# printf " \n Using (()) \n"
# while (( $n >= 1 )); do
    
#     echo " $n "

#    # n=$(( n+1 ))
#     (( --n ))
# done