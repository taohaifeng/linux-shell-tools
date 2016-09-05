#!/bin/sh  
  
DATE=`date +%Y_%m_%d_%H`  
  
if [ $1 ]  
then  
  for file in $(sed '/^$/d' $1)     //去掉空行  
  do  
    if [ -f $file ]                 //普通文件  
    then  
      res=`scp $file $2:$file`      //上传文件  
      if [ -z $res ]                //上传成功  
      then  
        echo $file >> ${DATE}_upload.log   //上传成功的日志  
      fi  
    elif [ -d $file ]              //目录  
    then  
      res=`scp -r $file $2:$file`  
      if [ -z $res ]  
      then  
        echo $file >> ${DATE}_upload.log  
      fi  
    fi  
  done  
else  
  echo "no file" >> ${DATE}_error.log  
fi  