#!/bib/sh

apt install libpam-cracklib -y 
apt install auditd -y

sudo echo "auth  required  pam_tally2.so  deny=5  onerr=fail  unlock_time=1800" >> /etc/pam.d/common-auth

sudo sed -i '/PASS_MAX_DAYS  99999/c\PASS_MAX_DAYS   90' >> /etc/login.defs
sudo sed -i '/PASS_MIN_DAYS  0/c\PASS_MIN_DAYS   7' >> /etc/login.defs
sudo sed -i '/PASS_WARN_AGE  7/C\PASS_WARN_AGE   14' >> /etc/login.defs

echo "This part must be done manually. Open another terminal and do this command."
echo "In the /etc/pam.d/common-password file find the line that begins with 'password [sucess=1 default=ignore] pam_unix.so...'"
echo "Add this to the end of the line: remember=5 minlen=8"
echo "continue?"
read continue 
echo "look for the line that looks like: password   requesite   pam_cracklib.so..."
echo "add: ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1"
echo "verify everything is correct pam will stop working if this is put in incorrectly."
echo "continue?"
read continue

auditctl -e 1

echo "Done"
