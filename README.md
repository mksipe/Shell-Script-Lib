# System-Services
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/3133583a0f174b6cba59a5f3885fc279)](https://app.codacy.com/app/mksipe/System-Services?utm_source=github.com&utm_medium=referral&utm_content=mksipe/System-Services&utm_campaign=badger)
## STATUS: ACTIVE
[![Codefresh build status]( https://g.codefresh.io/api/badges/build?repoOwner=mksipe&repoName=System-Services&branch=master&pipelineName=System-Services&accountName=mksipe&type=cf-1)]( https://g.codefresh.io/repositories/mksipe/System-Services/builds?filter=trigger:build;branch:master;service:5ad7d2863645ac000116d63f~System-Services)

>This repository System-Services is meant to be used as a command line tool that will hopefully be deemed as useful while hardening your Linux system. I cannot guarantee this to be the most stable source for your system but it has been tested and is regularly checked for new ways to improve and to become more stable. Unfortunately, this type of repository doesn't have command setting on your system. They are all shell scripts. I'm working on ways to make this a thing but I need more time to work on this. I would appreciate the support from other people who are willing to make this a better program and to help make it more user-friendly.

## REQUIREMENTS

System Services repository and contents were meant to run on a Linux system. Such as Ubuntu, Debian or Kali. This will not work with CentOS or any other kind of Redhat or sun system.

## PRE-WARNINGS

The contents of System Services can change and alter certain files on your computer. Use them at your own risk. Since this repository is going to mostly be under maintenance for improvement it is hard to say that these files will change your system in a harmful way. Though it is an unlikely possibility it is not likely that it would happen.

### INSTALLATION

To install these system services via command line use these commands-

First, open a directory you want to use as the download file for the services (suggesting an admin protected file or one only a superuser can use)

>INSTALL

 1 `git clone https://github.com/mksipe/System-Services`
 
 2 `cd System-Services`
 
 3 `chmod 755 INITIALIZE.sh` (chmod option is optional 755 is everyone can execute read and write so is not recommended. For you to use do `chmod 400 INITIALIZE.sh`)
 
 4 `./INITIALIZE.sh`

 5.`. /.bashrc`
 
### Maintenance

The script used in this command is optional. The command to run this updates packages in YUM, APT, and git.

>UPDATE
 
1 `MKS_Update`

2 `chmod 755 INITIALIZE.sh`

3 `./INITIALIZE.sh`

4.`. /.bashrc`

# BE AWARE!

The System Information file gives out information about your system. (duh) Keep it in a secured location on your file system. The scripts can now alter information on a system. So be aware of this.