#!/bin/sh 
cd $(dirname $0)
echo $(date) >> commit.txt
git commit -am "daily $(date)"
git push
