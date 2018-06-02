#!/bin/sh
sudo apt install privoxy
ip=$(hostname -I)
echo "listen-address $ip:8118" | sudo tee /etc/privoxy/config
sudo systemctl enable privoxy
sudo systemctl start privoxy
sudo systemctl status privoxy
ss -tunelp | grep 8118