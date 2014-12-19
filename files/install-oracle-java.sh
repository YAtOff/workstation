#!/bin/bash

sudo sed 's/main$/main universe/' -i /etc/apt/sources.list
sudo apt-get update && apt-get install -y software-properties-common python-software-properties
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-get update
sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
sudo apt-get install -y oracle-java7-installer
sudo apt-get install oracle-java7-set-default
