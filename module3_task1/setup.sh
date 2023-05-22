#!/bin/bash

# Install a good version of Hugo
apt-get update && apt-get install -y hugo make
make build