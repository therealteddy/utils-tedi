#!/bin/bash 

# A webgrabber
if [ "$1" ==  "--help" ] || [ "$#" -ne "1" ]; then 
	echo "Usage: `basename $0` [ARGS] example.org"
	echo "ARGS: --polite -> To be polite with your web pull!"
	echo "      --insecure -> To connect to insecure hosts"
fi
if [ "$1" == "--polite" ]; then 
	exec wget -r -p -U Mozilla --wait=10 --limit-rate=35K $2
elif [ "$1" == "--insecure" ]; then
	exec wget -r -p -U Mozilla  $2 --no-check-certificate
else 
	exec wget -r -p -U Mozilla "$1" 
fi 
                           
# By:                             
#            /           _/_      /
#  _. __  , /___  __ --- /  _  __/ 
# (__/ (_/_/_)</_/ (_   <__</_(_/_ 
#       /                          
#      '   @Github: https://github.com/cyber-ted/
