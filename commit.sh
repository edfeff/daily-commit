#!/bin/sh 
cd $(dirname $0)
txt=$(date +"%Y-%m-%d %H:%M.%S")
echo $txt  >> commit.txt
git commit -am "daily commit  $txt"
git push
