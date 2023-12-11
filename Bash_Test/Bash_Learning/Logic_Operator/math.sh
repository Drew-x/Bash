

num1=20
num2=5

echo $(( num1 + num2 ))
echo $(( num1 - num2 ))
echo $(( num1 * num2 ))
echo $(( num1 / num2 ))
echo $(( num1 % num2 ))

printf "\n" 
# using expr

num3=20
num4=5

echo $(expr $num3 + $num4 )
echo $(expr $num3 - $num4 )
echo $(expr $num3 \* $num4 )
echo $(expr $num3 / $num4 )
echo $(expr $num3 % $num4 )


