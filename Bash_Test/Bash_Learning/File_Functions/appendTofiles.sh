

echo -e "Enter the name of the file: \c"
read file_name

# IMPORTANT NOTE
# >> file will append
# > file will be overwriten


if [ -f $file_name ]
 then

        if [ -w $file_name ]
         then    
                echo "Add more data  ctr-l + d to exit"
                cat >> $file_name
            else
                echo "This file does not have write permissions"
        fi

    else
    echo  "$file_name does not exists"

fi        