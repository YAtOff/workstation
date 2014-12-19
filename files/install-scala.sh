#!/bin/bash

cd /tmp

sudo apt-get remove scala-library scala
wget http://www.scala-lang.org/files/archive/scala-2.11.4.deb
sudo dpkg -i scala-2.11.4.deb

sudo apt-get remove sbt
wget https://dl.bintray.com/sbt/debian/sbt-0.13.7.deb
sudo dpkg -i sbt-0.13.7.deb
