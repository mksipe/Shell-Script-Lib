#!/bin/sh
if [ $# -ne 1 ] ; then
 echo "Usage: ./Existance.sh file"
 echo "Will determine if the file exists."
 exit 255
fi

if [ -f $1 ] ; then
 echo [ True ] File $1 exists.
 exit 0
else
 echo [ False ] File $1 does not exist.
 exit 1
fi
