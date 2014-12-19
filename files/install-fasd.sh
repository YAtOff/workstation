#!/bin/bash

cd /tmp
wget https://github.com/clvv/fasd/archive/master.zip
unzip master.zip
cd fasd-master
sudo make install
