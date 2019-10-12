#!/bin/bash

# setup.sh
# Author: Phil Mayer
# Modified: 9/16/19

# Make sure Homebrew is installed.
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Some of my aliases require additional programs (see the "catp" alias). Install these now.
brew install exa jq

# My dotfile configuration includes jEnv and NVM. Make sure jEnv is installed and remove any current installations of
# NVM, as they will cause the zsh-nvm plugin to fail its setup.
brew install jenv
rm -rf $HOME/.nvm

# Copy files into place
cp files/* ~

# Install zsh (just in case, though it should be installed already) and set as the default shell
brew install zsh
chsh -s /bin/zsh

# Remove bash configuration files and move overrides files
rm ~/.bash_profile ~/.bash_aliases
mv ~/.bash_overrides ~/.zsh_overrides

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install oh-my-zsh plugins
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
