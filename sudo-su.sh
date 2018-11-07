
# Restrict su command to wheel members only.
apt -y install sudo
# create wheel group
groupadd wheel
# add user to wheel group
usermod -aG wheel $1
# restrict su to wheel group
sed -i "s/#.*auth.*required.*pam_wheel\.so/auth required pam_wheel\.so group=wheel debug/" /etc/pam.d/su
# restrict sudo to wheel group
echo "%wheel  ALL=(ALL:ALL) ALL" >> /etc/sudoers

