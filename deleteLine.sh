#!/bin/sh
##���������������һ��Ϊ�ļ������ڶ���ΪҪ�滻���ַ���
function delete_line
{
   chmod +w $1
   cp $1 $1.bak
   cat $1.bak | grep -v -e "$2" >$1       
}