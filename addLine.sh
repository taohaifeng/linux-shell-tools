#!/bin/sh
##3���������ļ�����ָ���кţ���Ҫ���������
function add_line
{
    chmod +w $1
    cp $1 $1.bak
    sed -e $2 'i' "$3" '' $1.bak > $1
    rm $1.bak
}