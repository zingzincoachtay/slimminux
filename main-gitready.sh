#!/bin/bash
myname=$1
myemail=$2
# https://stackoverflow.com/questions/20763980/check-if-a-string-contains-only-specified-characters-including-underscores
if [[ $myname =~ @ ]]; then
  myname=$2
  myemail=$1
fi
git config --global user.name  "$myname"
git config --global user.email "$myemail"
git config --list
#   user.name =Tay
#   user.email=kotei.aoki@gmail.com
cat ~/gitconfig
#   [user]
#     name = Tay
#     email = kotei.aoki@gmail.com
