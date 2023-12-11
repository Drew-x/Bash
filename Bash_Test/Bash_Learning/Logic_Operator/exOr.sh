




#**********************************

# strings
#link for string <=, >= 
# https://stackoverflow.com/questions/21294867/how-to-test-strings-for-lexicographic-less-than-or-equal-in-bash

word="test"
word2="fail"
#word2="pass"
word3="test2"
len=""

if [[ $word == "test1" ]] || [[ $word == "test2" ]];
 then
    echo word is equal to word
    # Nesting bottom block
elif [[ "$word2" != "pass" ]] || [[ $word3 != "test2" ]];
   then
      echo "word is not pass or test2 it is - : $word2"
    else
        echo "WORD is pass or test2"
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

