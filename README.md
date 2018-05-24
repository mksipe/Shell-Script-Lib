# Shell-Script-Lib

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/d6934421469b40dc9f14a3f8df98ad74)](https://www.codacy.com/app/mksipe/Shell-Script-Lib?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=mksipe/Shell-Script-Lib&amp;utm_campaign=Badge_Grade)
[![CodeFactor](https://www.codefactor.io/repository/github/mksipe/shell-script-lib/badge)](https://www.codefactor.io/repository/github/mksipe/shell-script-lib)

## STATUS: ACTIVE

>This repository Shell-Script-Lib is meant to be used as a command line tool that will hopefully be deemed as useful while hardening your Linux system. I cannot guarantee this to be the most stable source for your system but it has been tested and is regularly checked for new ways to improve and to become more stable. Unfortunately, this type of repository doesn't have command setting on your system. They are all shell scripts. I'm working on ways to make this a thing but I need more time to work on this. I would appreciate the support from other people who are willing to make this a better program and to help make it more user-friendly.

## What Does it do?

>Creates a library of Shell Scripts. 

>Includes Pre-Made Software.

>Installs Firewall.

>Sets System Backups.

>Installs Anti-Intrusion Software and Antiviruses.

>Has Searching Programs that find "Hacking Tools"

>Has an Audit Checking Program to find vulns.

>Can help find your System Information.

>Install Default Debian Packages.

>Make a Full System Update.

## REQUIREMENTS

Shell Script Lib repository and contents were meant to run on a Linux system. Such as Ubuntu, Debian or Kali. This will not work with CentOS or any other kind of Redhat or sun system.

## PRE-WARNINGS

The contents of Shell Script Lib can change and alter certain files on your computer. Use them at your own risk. Since this repository is going to mostly be under maintenance for improvement it is hard to say that these files will change your system in a harmful way. Though it is an unlikely possibility it is not likely that it would happen.

### INSTALLATION

To install these shell scripts  via command line use these commands-

First, open a directory you want to use as the download file for the services (suggesting an admin protected file or one only a superuser can use)

>INSTALL

 1 `git clone https://github.com/mksipe/Shell-Script-Lib`
 
 2 `cd Shell-Script-Lib`
 
 3 `chmod 755 INITIALIZE.sh` (chmod option is optional 755 is everyone can execute read and write so is not recommended. For you to use do `chmod 600 INITIALIZE.sh`)
 
 4 `./INITIALIZE.sh`

 
### Maintenance

The script used in this command is optional. The command to run this updates packages in YUM, APT, and git.

>UPDATE
 
1 `git pull`

2 `chmod 755 INITIALIZE.sh`

3 `./INITIALIZE.sh`


# BE AWARE!

The System Information file gives out information about your system. (duh) Keep it in a secured location on your file system. The scripts can now alter information on a system. So be aware of this.

## Outside Resources

Shell-Script-Lib Uses outside resources to help improve its quality. It uses the LinuxAV-Light repository to help configure antivirus programs on the system as well as the Linux-tor-incog repository to help make your system use more secure ways to browse the internet and to remain anonymous. 

## Additional Source Credit

>Other Software Repositories

Thank you @maldevel for allowing a portion of your shell software to be used in my program. (Origional Source: https://github.com/maldevel/blue-team) 

Thank you @Blizzo for allowing a portion of your shell and configuration software to be used in this program. (Origional Source: https://github.com/Blizzo/tools)

Thank you @i80and for allowing your perl repository software to be used in this program. (Origional Source: https://github.com/i80and/ubuntu-linux-grsecurity)

## Contact Information
>Creator

Here is my contact information for support on this project.

Email: masonsipe0513@gmail.com
