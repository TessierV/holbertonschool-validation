#!/bin/bash

apt-get update
apt-get install -y hugo make
make build
if [ $? -eq 0 ]; then
    exit 0
else
    exit 1
fi
