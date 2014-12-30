#!/bin/bash

# Write a shell script to remove all dot character (.) within those files.
if [ -z "$1" ];then
   echo "please input the file path: eg: sh uppercase.sh /home/magentodev/bash"
   path="/home/magentodev/bash"
   echo "the default path is:  " $path
   #exit 0 
else
   path=$1
fi

fileList=`ls $path`;
array=(${fileList// / });
for file in "${array[@]}";
	do 
		#echo $file
		fileName=$path/$file
		sed 's/\.//' $fileName |sed 's/[a-z]/\U&/g' > tmp.txt  # remove dot character save the content first
		mv tmp.txt ${fileName} #rename file
	done

exit 0

