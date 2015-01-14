#!/bin/bash

rm ~/.bashrc
rm ~/.bash_aliases
rm ~/.bash_rails
rm ~/.gemrc

ln -s .bashrc ~/.bashrc
ln -s .bash_aliases ~/.bash_aliases
ln -s .bash_rails ~/.bash_rails
ln -s .gemrc ~/.gemrc
