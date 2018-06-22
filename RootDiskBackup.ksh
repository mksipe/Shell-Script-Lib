#!/bin/ksh
#ONLY RUN THIS IF YOU HAVE A VERSION OF THE KORN SHELL (Korn shell is outdated but is still good to keep some kind of backup system for that kind of system.)
LOG=/tmp/backuplog
echo "backup for $(date -u) commencing..." | sudo tee -a $LOG
mt -f /dev/rmt/0 rewind
ufsdump 0uf /dev/rmt/0cn / | sudo tee -a $LOG
ufsdump 0uf /dev/rmt/0cn /usr | sudo tee -a $LOG
ufsdump 0uf /dev/rmt/0cn /opt | sudo tee -a $LOG
ufsdump 0uf /dev/rmt/0cn /export/home  | sudo tee -a $LOG
echo "Backup has now completed" | sudo tee -a $LOG