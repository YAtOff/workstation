#!/bin/bash

cd /tmp

git clone http://git.code.sf.net/p/tmux/tmux-code tmux

cd tmux

autoreconf -fis

./configure --prefix=/usr

make

sudo make install
