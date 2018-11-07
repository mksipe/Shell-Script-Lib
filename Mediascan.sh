#!/bin/sh
if [ $# -ne 1 ] ; then
    echo "Usage: ./Mediascan.sh <File Extension (.mp3, .mov, etc.)> "
    echo " Will search system for file extension given."
exit 255
fi
find / $1 |grep $1
echo [SUCCESS] Mediascan.sh ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/data/MK3S.log