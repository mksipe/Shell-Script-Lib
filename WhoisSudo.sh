#!/bin/sh
awk -F':' '$3 == 28 {print $4}' /etc/group