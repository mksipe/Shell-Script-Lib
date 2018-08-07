#!/bin/sh
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root."
fi
echo "Hashing Filesystem. This will take a while."
cd /
find -type f -exec md5sum '{}' \; > /bin/lib/sh/MK3S/data/md5sum.db