#!/bin/sh

echo "Clearing old dotfiles..."
rm -r ~/.vim ~/.vimrc ~/.bashrc ~/.config/sublime-text-2 ~/.config/terminator

cd ../

echo "Linking .vimrc & .vim/..."
ln -s dotfiles/vimrc .vimrc
ln -s dotfiles/vim .vim

echo "Linking .bashrc..."
ln -s dotfiles/bashrc .bashrc

cd .config

echo "Linking ST2 config..."
ln -s ../dotfiles/sublime-text-2/ sublime-text-2

echo "Linking terminator..."
ln -s ../dotfiles/terminator/ terminator
