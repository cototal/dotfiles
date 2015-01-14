#!/bin/bash

cd

rm .bashrc
rm .bash_aliases
rm .bash_rails
rm .gemrc

ln -s dotfiles/.bashrc
ln -s dotfiles/.bash_aliases
ln -s dotfiles/.bash_rails
ln -s dotfiles/.gemrc

cd dotfiles
