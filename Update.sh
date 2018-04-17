#!/bin/sh
spinner () {
    local pid=$!
    local delay=0.25
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}

# Updating all APT packages
sudo apt update -y & spinner
sudo apt update -y & spinner
sudo apt full-upgrade -y & spinner
sudo apt autoremove -y & spinner
# Update all YUM packages

sudo yum update & spinner

# Updating Aptitude 

aptitude update & spinner
aptitude upgrade & spinner

# Update Repos


git pull & spinner
