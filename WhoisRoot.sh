#!/bin/sh
awk -F':' '$3 == 0 {print $4}' /etc/group