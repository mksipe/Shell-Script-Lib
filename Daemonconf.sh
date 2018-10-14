#!/bin/sh
sudo apt install daemonlogger -y
sudo dpkg-query -l | grep daemonlogger *
echo "0 12 * * * daemonlogger -D " | sudo tee -a /etc/crontab
echo "Daemonlogger Installed"
