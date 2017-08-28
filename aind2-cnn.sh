#!/bin/bash

if [ ! -d "$1" ]; then
  echo "Requires valid target directory"
  exit 1
else
  DIR="$1"
fi

docker build -t keithblaha/aind2-dog -f Dockerfile-aind2-cnn .

nvidia-docker run                                       \
  --net=host                                            \
  -e=DISPLAY                                            \
  -v=$HOME/.Xauthority:/root/.Xauthority                \
  -v=$PWD/$DIR:/src                                     \
  -v=$PWD/dogImages:/src/dogImages                      \
  -v=$PWD/lfw:/src/lfw                                  \
  -v=$PWD/bottleneck_features:/src/bottleneck_features  \
  -p=8888                                               \
  -it keithblaha/aind2-dog
