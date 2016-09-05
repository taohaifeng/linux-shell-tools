#!/bin/sh
##两个输入参数，第一个为文件名，第二个为要替换的字符串
function delete_line
{
   chmod +w $1
   cp $1 $1.bak
   cat $1.bak | grep -v -e "$2" >$1       
}