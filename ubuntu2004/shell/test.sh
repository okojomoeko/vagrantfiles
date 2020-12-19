#!/usr/bin/zsh
# Install Anaconda for yourself
if [ ! -e $1/temp/dotfiles ]; then
    git clone https://github.com/okojomoeko/dotfiles.git $1/temp/dotfiles
fi
if [ ! -e $1/temp/vagrantfile ]; then
    git clone https://github.com/okojomoeko/dotfiles.git $1/temp/dotfiles
fi
