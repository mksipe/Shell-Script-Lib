#!/bin/bash

# Set Maximum number of days a password may be used
sed -i "s/^PASS_MAX_DAYS.*/PASS_MAX_DAYS   90/" /etc/login.defs

# Set Minimum number of days allowed between password changes to 5
sed -i "s/^PASS_MIN_DAYS.*/PASS_MIN_DAYS   7/" /etc/login.defs

# Set Number of days warning given before a password expires
sed -i "s/^PASS_WARN_AGE.*/PASS_WARN_AGE   14/" /etc/login.defs

# Lock Inactive User Accounts after 30 days
useradd -D -f 30

# Prevent root-owned files from accidentally becoming accessible to non-privileged users
usermod -g 0 root

# Cracklib installation
apt -y install libpam-cracklib

# Set minimum password length
sed -i "s/minlen=[[:digit:]]\+/minlen=14/" /etc/pam.d/common-password

# Is username (straight or reversed) contained in the new password? reject it.
sed -i "s/\bdifok=3\b/& reject_username/" /etc/pam.d/common-password

# Password complexity class 4
sed -i "s/\bpam_cracklib.so\b/& minclass=4/" /etc/pam.d/common-password
sed -i "s/\breject_username\b/& dcredit=-1 ucredit=-1 ocredit=-1 lcredit=-1/" /etc/pam.d/common-password

# Reject passwords which contain more than 2 same consecutive characters
sed -i "s/\bminclass=4\b/& maxrepeat=2/" /etc/pam.d/common-password

# Remember last 24 passwords
sed -i "s/\bpam_unix.so\b/& remember=24/" /etc/pam.d/common-password

# Lock out accounts after 5 unsuccessful consecutive login attempts for 20 minutes
sed -i '/session.*optional.*pam_keyinit.so.*force.*revoke/a auth required pam_tally2\.so onerr=fail audit silent deny=5 unlock_time=1200/' /etc/pam.d/login

# Disallow non-local logins to privileged accounts
sed -i "/-:wheel:ALL EXCEPT LOCAL.*/s/^#//g" /etc/security/access.conf

# Increase the delay time between login prompts (10sec)
sed -i "s/delay=[[:digit:]]\+/delay=10000000/" /etc/pam.d/login


