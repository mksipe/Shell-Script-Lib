#!/bin/bash

chown root:root /etc/motd
chmod 644 /etc/motd
echo "
###############################################################
#                 Authorized users only!                      # 
# Disconnect IMMEDIATELY if you are not an authorized user!!! #
#         All actions Will be monitored and recorded          #
#  By connecting to this computer you agree to acknowledgeing #
#  that all actions are logged and that any information       #
#  stored on this device may be reviewed and used in any way  #
#  nesessary to the system owner, admin, and law enforcemnet. #
#     Any illegal actions or incriminating actions reported   #
#  on this system will be used to the full extent to the law  #
#                                                             #
###############################################################" > /etc/motd
  
chown root:root /etc/issue
chmod 644 /etc/issue
echo "
###############################################################
#                 Authorized users only!                      # 
# Disconnect IMMEDIATELY if you are not an authorized user!!! #
#         All actions Will be monitored and recorded          #
#  By connecting to this computer you agree to acknowledgeing #
#  that all actions are logged and that any information       #
#  stored on this device may be reviewed and used in any way  #
#  nesessary to the system owner, admin, and law enforcemnet. #
#     Any illegal actions or incriminating actions reported   #
#  on this system will be used to the full extent to the law  #
#                                                             #
###############################################################" > /etc/issue
  
chown root:root /etc/issue.net
chmod 644 /etc/issue.net
echo "
###############################################################
#                 Authorized users only!                      # 
# Disconnect IMMEDIATELY if you are not an authorized user!!! #
#         All actions Will be monitored and recorded          #
#  By connecting to this computer you agree to acknowledgeing #
#  that all actions are logged and that any information       #
#  stored on this device may be reviewed and used in any way  #
#  nesessary to the system owner, admin, and law enforcemnet. #
#     Any illegal actions or incriminating actions reported   #
#  on this system will be used to the full extent to the law  #
#                                                             #
###############################################################" > /etc/issue.net

echo [SUCCESS] banners.sh ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/data/MK3S.log