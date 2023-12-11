

# if [ condition ]
# then
#   statement
#fi

count=11


if [ $count -eq 11 ]
 then
   echo Passed
fi

if [ $count -ne 11 ]
 then
   echo Not passed

 else
      echo USING ELSE
fi

# if you want to use brakets <, >, <=, >=
# You must enclose it with (())

if (( count < 9 ))    
 then
    echo $count is less than 9
fi

if (( count > 9 ))    
 then
    echo $count is greater than 9
fi



#**********************************

# strings
#link for string <=, >= 
# https://stackoverflow.com/questions/21294867/how-to-test-strings-for-lexicographic-less-than-or-equal-in-bash

word=asdasd1
len=""

if [[ $word == "asd" ]];
 then
    echo word is equal to word
    # Nesting bottom block
elif [[ "$word" != "word" ]];
   then
      echo word is not equal to asdasd1
fi

#if [[ "$word" != "word" ]];
# then 
#    echo word is not equal to asdasd1
#fi

if [[ "$word" > 5 ]];
 then
    echo word is length is greater than 5
fi


# Check if String is empty

noW=""
if [ -z $len  ]
 then
    echo word is null
fi

# Check if String is not empty
if [ -z $noW ]
 then
    echo noW is null
fi

# Check if String is not empty
if [ -n $word ]
 then
    echo word is not empty
fi

