#!/bin/sh

echo "Backing Up"
date=$(date -u)
#!/bin/bash
####################################
#
# Backup to NFS mount script.
#
####################################
mkdir /mnt/backup
# What to backup. 
backup_files="/home /var/spool/mail /etc /root /boot /opt"

# Where to backup to.
dest="/mnt/backup"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest

echo "0 0 * * * bash /usr/local/bin/Backup.sh" | sudo tee /etc/crontab
cp -r Backup.sh /usr/local/bin/Backup.sh
echo "Installling crontab"
echo "[SUCCESS] $USER created a backup on $date" | sudo tee -a /bin/lib/sh/MK3S/logs/MK3S.log
echo "Done"

echo [SUCCESS] Backup.sh was ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/data/MK3S.log