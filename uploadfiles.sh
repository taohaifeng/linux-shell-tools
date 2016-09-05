#!/bin/sh  
  
DATE=`date +%Y_%m_%d_%H`  
  
if [ $1 ]  
then  
  for file in $(sed '/^$/d' $1)     //ȥ������  
  do  
    if [ -f $file ]                 //��ͨ�ļ�  
    then  
      res=`scp $file $2:$file`      //�ϴ��ļ�  
      if [ -z $res ]                //�ϴ��ɹ�  
      then  
        echo $file >> ${DATE}_upload.log   //�ϴ��ɹ�����־  
      fi  
    elif [ -d $file ]              //Ŀ¼  
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