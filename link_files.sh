#!/bin/bash

cd

rm .bash_shared
rm .bash_aliases
rm .bash_rails
rm .gemrc

ln -s dotfiles/.bash_shared
ln -s dotfiles/.bash_aliases
ln -s dotfiles/.bash_rails
ln -s dotfiles/.gemrc

cd dotfiles
