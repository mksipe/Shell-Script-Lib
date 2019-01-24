#!/bin/bash
# set users umask
sed -i "s/UMASK.*022/UMASK   077/" /etc/login.defs
# set root umask
sed -i "s/#.*umask.*022/umask 077/" /root/.bashrc
