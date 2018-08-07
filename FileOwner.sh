#!/bin/sh
if [ $# -ne 1 ] ; then
    echo "Usage: ./FileOwner.sh <User> "
    echo "Finds all files by a specified user."
exit 255
find / -user $1 