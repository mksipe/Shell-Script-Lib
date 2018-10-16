#!/bin/sh
echo "rpcbind: ALL" >> /etc/hosts.deny
svccfg -s rpc/bind setprop config/enable_tcpwrappers=true
svcadm refresh rpc/bind