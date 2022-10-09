#!/bin/sh 

echo $(date) >> commit.txt
git commit -am "daily $(date)"
git push