if [ $# -ne 1 ] ; then
 echo "Usage: Delete.sh <Filename>"
 echo " Will delete a file agressively with SHRED."
 exit 255
fi
if [ ! -e $1 ] ; then
 echo does not exist.
 exit 1
fi
shred -zvu -n 99 $1