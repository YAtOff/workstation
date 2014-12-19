# install chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get -y install google-chrome-stable

# install zeal
sudo add-apt-repository ppa:jerzy-kozera/zeal-ppa
sudo apt-get update
sudo apt-get -y install zeal 
#!/bin/bash

# install virualbox and vagrant
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian trusty contrib" >> /etc/apt/sources.list'
wget http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y virtualbox-4.3
sudo apt-get install -y virtualbox-dkms
sudo apt-get install -y vagrant
