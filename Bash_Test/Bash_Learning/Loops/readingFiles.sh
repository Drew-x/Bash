
echo "reading file content using file redirection"

while read text ; do
    echo $text
done < Bash_Learning/Loops/readingFiles.sh


printf "\n ***********************************\n"

echo "Reading file using pipes"

ls Bash_Learning/Loops | cat | while read text ; do
    echo $text
done 

# cat | ls Bash_Learning/Loops | while read text ; do
#     echo $text
# done 
