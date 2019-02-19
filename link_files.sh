#!/bin/bash

cd

rm .ackrc
rm .bash_shared
rm .bash_aliases
rm .bash_rails
rm .gemrc
rm .inputrc
rm .irbrc
rm .tmux.conf
rm .rails-rubocop.yml

ln -s dotfiles/.ackrc
ln -s dotfiles/.bash_shared
ln -s dotfiles/.bash_aliases
ln -s dotfiles/.bash_rails
ln -s dotfiles/.gemrc
ln -s dotfiles/.inputrc
ln -s dotfiles/.irbrc
ln -s dotfiles/.tmux.conf
ln -s dotfiles/.rails-rubocop.yml

cd dotfiles
