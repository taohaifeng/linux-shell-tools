#!/bin/sh
##һ����Σ����ҵ��ļ���
detectfile_name() {
  if [ ! -f file_name ]
     then
     echo "Error: file_name does not exist.  Please check"
     exit 1;
    else
      echo "OK��the directy is exist"
  fi
}