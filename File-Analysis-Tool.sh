#!/bin/sh
if [ $# -ne 1 ] ; then
    echo "Usage: ./File-Analysis-Tool.sh <File>  "
    echo "Gives information about the given file."
exit 255
fi 
touch "$1-Analysis"
echo "####################" | tee -a $1-Analysis
echo "$1 Basic Attributes" | tee -a $1-Analysis
echo "####################" | tee -a $1-Analysis
echo "Owner Info:" ; stat $1 | tee -a $1-Analysis ; echo "####################"
echo "Type:" ; file $1 | tee -a $1-Analysis ; echo "####################"
echo "S.O.D:" ; ldd $1 | tee -a $1-Analysis ; echo "####################"
echo "L.C.T:" ; ltrace $1 | tee -a $1-Analysis ; echo "####################"
echo "Hash (Predicted):" ; md5sum $1 | tee -a $1-Analysis ; echo "####################"
echo "Hash (Pregiven):" ; md5sum -c $1 | tee -a $1-Analysis ; echo "####################"
echo "Lines:" ; wc -l $1 | tee -a $1-Analysis ; echo "####################"
echo "Charachters:" ; wc -m $1 | tee -a $1-Analysis
echo "####################" | tee -a $1-Analysis
echo "Ransom/Malware Attributes" | tee -a $1-Analysis
echo "####################" | tee -a $1-Analysis
echo "ClamAV:" ; clamscan $1 | tee -a $1-Analysis
echo "####################" | tee -a $1-Analysis
mkdir /bin/lib/sh/MK3S/data/Analysis
mv $1-Analysis /bin/lib/sh/MK3S/data/Analysis/