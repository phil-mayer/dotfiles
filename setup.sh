#!/bin/bash

# setup.sh
# Author: Phil Mayer
# Modified: 9/16/19

# Copy files into place
cp files/* ~

# Install zsh and set as the default shell
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
