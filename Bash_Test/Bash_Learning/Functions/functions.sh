
# # Syntax 
# function name(){
#     #commands
# }

# name2 (){
#     #commands
# }

# No arguments 
function test1(){
    echo "echoing testing test1"
}

#Accepting arugments
function test2(){
    
    echo "Passed: $1"
}

#Accepting multi arugments
function test3(){
    
    echo "Passed: $1 $2 $3 "
}

test1 

test2 passedItem

test3 passedItem1 passedItem2 passedItem3