#!/bin/sh
START=$(date +%s)
#Some Code Here
END=$(date +%s)
DIFF=$(( $END - $START ))
DIFF=$(( $DIFF / 60 ))
#Echo $DIFF for total Runtime in the script.