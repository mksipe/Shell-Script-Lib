#!/bin/sh

sudo apt install lightdm -y

echo "Users Being Managed" 

echo "allow-guest=false" >> /etc/lightdm/lightdm.conf

gpasswd adm

gpasswd Users

echo "Done"

