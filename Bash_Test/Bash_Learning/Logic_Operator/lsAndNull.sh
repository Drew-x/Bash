var=""
var2="foo"

if ls > /dev/null
then
    echo ls worked

fi

if [[ $(ls) = "" ]]
then
    echo ls is empty 2 
    
    else
        echo "ls has data" 
fi