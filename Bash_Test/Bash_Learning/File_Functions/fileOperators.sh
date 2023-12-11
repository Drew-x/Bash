
#NOTE: Everything is relative to work space directory
echo -e "enter file name \c"
read fileName


#NOTE: Two types of file chareter file = text file and blob file which is binary like png
# character file -c
# blob file -b 
# -s checks if a file is empty 

# -e checks if file exists 
if [ -e $fileName ]
 then 
    echo $fileName " was found"
   # rm $fileName
else
    echo $fileName " was not found"

fi


echo -e "enter file name2 \c"
read fileName2

# -f checks if file exists and is regular
if [ -f $fileName2 ]
 then 
    echo $fileName2 " was found"
else
    echo $fileName2 " was not found"

fi


#***********************
# Directories 

echo -e "enter directory name \c"
read dirName
# -f checks if file exists and is regular
if [ -d $dirName ]
 then 
    echo $dirName " was found"
else
    echo $dirName " was not found"

fi

echo -e "enter file name3 \c"
read fileName3

# RE-CHECK Boolean logic 
# -f checks if file exists and is regular 
#Also check permissions -x,-w,-r
if [ -s $fileName3 ]
 then 
    echo $fileName3 "Not empty"
 else
    echo $fileName3 "File is empty"
fi