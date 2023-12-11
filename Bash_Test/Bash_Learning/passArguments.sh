echo "Pass into \$1 \$2 \$3"
echo "VALUES: $1 $2 $3"

echo "*********************"
echo "Working with array- "
echo $4 $5 $6 $7

array=("$@")

echo "List[0] ${array[0]} List[6] ${array[1]}" 

echo Using @: $@

#Amount of arguments passed
echo Arguments: $#

echo Zero: $0 # $0 is script name