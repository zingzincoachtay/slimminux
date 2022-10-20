#!/bin/bash

bash ./ready-wifi.sh

echo Your Git name?
read NAME
echo Your Git username?
read UNAME

bash ./ready-git.sh $NAME $UNAME

# git clone https://github.com/trekhleb/javascript-algorithms ~/Documents/ 
# git clone https://github.com/zingzincoachtay/tinyscript_python ~/Documents/ 
# git clone https://github.com/coherentgraphics/cpdf-binaries ~/Documents/ 
