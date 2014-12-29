#!/bin/bash

#  Write a shell script to change the content of those files to all uppercase.

if [ -z "$1" ];then
   echo "please input the file path: eg: sh uppercase.sh /home/magentodev/bash"
   path="/home/magentodev/bash"
   echo "the default path is:  " $path
   #exit 0 
else
   path=$1
fi

fileList=`ls $path`;
array=(${fileList// / }); #split the fileList
echo $array
for file in "${array[@]}";
	do 
		#echo $file
		if [[ $file = *zalora* ]]; then
		  newname=${file//zalora/Zalora} 
		  old=$path/$file   #old file name
		  new=$path/$newname   #new file name
		  mv $old $new   #rename
		fi
	done


exit 0
