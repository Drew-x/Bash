
echo ${BASH_VERSION}

for i in {0..10..2}; do # {Start..Condition..increment}
    echo $i
done

printf "\n Second loop \n" 
for (( i=1; i<=5; i++ )); do # {Start..Condition..increment}
    echo $i
done

printf "\n *********************************************** \n"
#************************************************

#For loops using commands 

printf " For loops using commands\n"


for command in ls pwd date; do
    echo "********* $command ***********"

    echo $command # Does not excute command 
    $command
done