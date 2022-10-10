#!/bin/sh 

cd $(dirname $0)

gitfun(){
  txt=$(date +"%Y-%m-%d %H:%M.%S")
  echo $txt  >> commit.txt
  git commit -am "daily commit  $txt"
  git push
}

main(){
  times=$RANDOM
  ((times=times%2+1))
  for  ((i=0; i<=times; i++))
  do
    echo "change $i/$times"
    gitfun
    sleep 2s
  done
}

main

