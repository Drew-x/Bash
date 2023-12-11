# Local key word allows a variable to only be changed in that function 
# Otherwise it well overwrite its past data 


function print1() {
    name=$1
    echo "the name is $name"

}

function print2() {
    local name2=$1
    echo "the name is $name2"
    
}


name="Tom"

echo "The name is $name : Before" 

print1 New1

echo "The name is $name : After" 


printf "\n*****************************\n"

name2="Tom"

echo "The name is $name2 : Before" 

print2 New2

echo "The name is $name2 : After" 