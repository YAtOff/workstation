#!/bin/bash

ln -s ~/packages/dircolors-solarized/dircolors.256dark ~/.dir_colors

echo 'eval `dircolors ~/packages/dircolors-solarized/dircolors.256dark`' >> ~/.zshrc
