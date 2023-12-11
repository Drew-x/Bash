
#prints first column
awk -F "," '{print $1}' myFile.csv


#printing several columns
awk -F "," '{print $1 $2 $3}' myFile.csv


#printing several columns and specfifing spacing
awk -F "," '{print $1"\t"$2"\t\t"$3}' myFile.csv