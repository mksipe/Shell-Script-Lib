#!/bin/sh

sudo apt install lightdm -y

echo "Users Being Managed" 

echo "allow-guest=false" | sudo tee -a /etc/lightdm/lightdm.conf

gpasswd adm

echo "Done"

