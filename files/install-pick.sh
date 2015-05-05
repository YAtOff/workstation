#!/bin/bash

wget https://github.com/thoughtbot/pick/releases/download/v1.1.1/pick-1.1.1.tar.gz
wget https://github.com/thoughtbot/pick/releases/download/v1.1.1/pick-1.1.1.tar.gz.asc
gpg --verify pick-1.1.1.tar.gz.asc
tar -xzf pick-1.1.1.tar.gz
cd pick-1.1.1
./configure
make
sudo make install
