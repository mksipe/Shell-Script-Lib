#!/bin/sh
BASEDEST=/home/user/Documents
YEAR=`date +%Y`
MONTH=`date +%m`
mkdir -p $BASEDEST/$YEAR/$MONTH/
DESTINATION=$BASEDEST/$YEAR/$MONTH/
MAIN=/home/$USER/archive_temp/*
/usr/bin/rsync -ar --remove-source-files $MAIN $DESTINATION