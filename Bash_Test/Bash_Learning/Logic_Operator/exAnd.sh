

#NOTE you can use -a instead of &&

count=11


if [ $count -gt 10 ] && [ $count -lt 20 ]
 then
   echo "$count is greater than 10 and less than 20 "
fi

if [ $count -ne 11 ] && [$count -ne 12 ]
 then
   echo "count is 11 or 12"

 else
      echo "count is greater than 11 and 12"
fi

# if you want to use brakets <, >, <=, >=
# You must enclose it with (())

count2=7
count3=77

if (( count2 < 9 )) && (( count2 > 5 ))    
 then
    echo $count is less than 9 and greater than 5 
fi

if (( count3 >  70))  && (( count3< 75 ))
 then
    echo $count is greater than 70 and less than 75

  else
    echo "DID not meet requirments"  
fi

#**********************************
