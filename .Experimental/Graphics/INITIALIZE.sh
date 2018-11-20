#!/bin/sh
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root."
    exit
fi
if [ ! -e /bin/lib/sh/MK3S ] ; then
 echo MK3SL is not installed.
 exit 1                      
fi
mkdir /Framework
mv *.html /Framework
mv *.css /Framework
mv *.git /Framework
mv *.github /Framework
mkdir /bin/lib/public
mkdir /bin/lib/public/data
mkdir /home/$USER/Desktop/SSL
mkdir /bin/lib/sh/MK3S/data/web
mv *.html /bin/lib/sh/MK3S/data/web
mv *.css /bin/lib/sh/MK3S/data/web
ln /bin/lib/public/data/web/HTSA.html /home/$USER/Desktop/SSL/HTSA
rm -r /Framework
