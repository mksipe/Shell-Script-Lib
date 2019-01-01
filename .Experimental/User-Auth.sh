#!/bin/sh

sudo apt install lightdm -y

echo "Users Being Managed" 

echo "allow-guest=false" | sudo tee -a /etc/lightdm/lightdm.conf
echo "greeter-hide-users=true" | sudo tee -a /etc/lightdm/lightdm.conf
echo "greeter-show-manual-login=true" | sudo tee -a /etc/lightdm/lightdm.conf
echo "greeter-allow-guest=false" | sudo tee -a /etc/lightdm/lightdm.conf
echo "autologin-user=none" | sudo tee -a /etc/lightdm/lightdm.conf
echo "disable-user-list=true" | sudo tee -a /etc/gdm3/greeter.dconf-defaults
echo "disable-restart-buttons=true" | sudo tee -a /etc/gdm3/greeter.dconf-defaults
echo "AutomaticLoginEnable=false" | sudo tee -a /etc/gdm3/greeter.dconf-defaults
gpasswd adm
chmod 640 /etc/shadow
echo "Done"

