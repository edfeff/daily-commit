#!/bin/sh 
cd /root/github/daily-commit
echo $(date) >> commit.txt
git commit -am "daily $(date)"
git push
