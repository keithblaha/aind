#!/bin/bash

if [ ! -d "$1" ]; then
  echo "Requires valid target directory"
  exit 1
else
  DIR="$1"
fi

docker build -t keithblaha/anaconda ./anaconda-docker
docker build -t keithblaha/aind ./aind-docker

docker run                                \
  --net=host                              \
  -e=DISPLAY                              \
  -v=$HOME/.Xauthority:/root/.Xauthority  \
  -v=$PWD/$DIR:/src                       \
  -it keithblaha/aind
