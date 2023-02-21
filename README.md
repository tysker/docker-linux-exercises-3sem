# LINUX COMMANDS EXERCISES

This repository contains exercises to practice linux commands.

For running the exercises you need to have a linux machine or in case
that you have a MAC or Windows machine you can just use a docker container.

Follow the instructions below to get started.

1. clone docker_linux_environment repository from GitHub
2. open a bash terminal or a command prompt inside your docker_linux_environment folder
3. run docker build -t linux/env .
4. run docker run -it --name mylinuxenv linux/env
5. now you should be inside the container. To get out, you just write exit
6. If you want to use the same container again, you just have to do the following:
   - docker start mylinuxenv
   - docker container exec -it mylinuxenv bash



# Linux overview

## Notes
options can have different meaning to different programs
docker cp foo.txt container_id:/foo.txt
nano, vim, emacs
if you want to use ifconfig, install net-tools

## Help
1. man command
2. command --help

## Search Show and install packages
1. apt search sudo
2. apt show sudo
3. apt install sudo

## get some basic info and create a user
[Link](https://linuxize.com/post/how-to-create-users-in-linux-using-the-useradd-command/)
1. whoami = print effective userid
2. id = print real and effective user and group IDs
3. pwd = print name of current/working directory
4. printenv = prints environment variables
5. sudo useradd -m username = user gets added to home/username directory
6. sudo passwd username
7. sudo usermod -s /bin/bash username = changes terminal from sh to bash
8. sudo adduser username sudo
9. login = login as new user
10. history = shows last commands (use !linenumber to repeat previous commands)

try to create a new user and then try to step into his home directory. What happens?

## commands with multiple options and arguments
one option
- wc -l file
  options are seperated
- wc -l -w file
  or with just one dash
- wc -lw file
  commands can also be one word with two dashes
- wc --lines file

## unzip
- use the myzip file

## grep and pipes
- [grep exercise](https://ostechnix.com/the-grep-command-tutorial-with-examples-for-beginners/)
- grep ker grep.txt| sort
- combining commands = command1 && command2 && command3

## echo, write and read from and to a file
- echo my name is joerg
- echo my name is $USER and my home is $HOME
- echo this is a long sentence /
  that doesn't fit on one line
- touch file.txt
- echo sometext > file.txt
- echo some more text >> file.txt
- rm file.txt
- mkdir folderName
- create a text file
- delete folder incl textfile

## copy
- cp file1 file2 // copy file
- mv file1 file2 // rename

## network
- ip

## Process
- ps
- top
- kill

## file permissions
- chmod octal file

## show off linux
- [SDKMan](https://sdkman.io/)
- [ZSHELL](https://linuxconfig.org/learn-the-basics-of-the-zsh-shell)

## View / Edit file
- nano (text editor)
- cat (print out file to screen)
- less (view file with paging)
- head / tail (show beginning or end of file)

## find file/folder
- find -name "demo.sql"

