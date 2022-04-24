#!/bin/bash

# Check if vim or nvim are installed
which_vim=`which vim`
which_nvim=`which nvim`
if [ which_vim == *which: no* ] && [ which_nvim == *which: no* ]
then
  echo "Vim or NeoVim was not installed"
  echo "Please consider installing one of them"
  exit 1
fi

# Backup the machine's previous configurations
date=`date +%s`
mv ~/.vim/init.vim ~/.vim/backup-before-vimasvsc$date.vim
mv ~/.nvim/init.vim ~/.nvim/backup-before-vimasvsc$date.vim
mv ~/.vimrc ~/.vimrc-backup-before-vimasvsc$date.vim

# Move the vim initializer at the proper directory
mv ./init.vim ~/.vim/init.vim
mv ./init.vim ~/.nvim/init.vim
mv ./init.vim ~/.vimrc

# Install vim plug 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qa
