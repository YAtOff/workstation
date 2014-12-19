#!/bin/bash

sudo dpkg -i mysql-apt-config_0.3.2-1ubuntu14.04_all.deb
sudo apt-get update
sudo apt-get install mysql-server
sudo apt-get install mysql-workbench

