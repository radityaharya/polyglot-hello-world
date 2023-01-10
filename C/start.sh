#!/bin/bash

if ! [ -x "$(command -v gcc)" ]; then
  sudo apt-get install -y gcc
fi

gcc C/hello_world.c -o C/hello_world

./C/hello_world