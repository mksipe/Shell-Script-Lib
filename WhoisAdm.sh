#!/bin/sh
awk -F':' '$3 == 4 {print $4}' /etc/group

