#!/bin/sh
##3个参数，文件名，指定行号，需要插入的内容
function add_line
{
    chmod +w $1
    cp $1 $1.bak
    sed -e $2 'i' "$3" '' $1.bak > $1
    rm $1.bak
}