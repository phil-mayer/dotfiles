#!/bin/bash

# setup.sh
# Author: Phil Mayer
# Modified: 11/7/19

set -euo pipefail
IFS=$'\n\t'
set -x

# Make sure Homebrew is installed.
# TODO: check if brew is on the PATH first
# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Some of my aliases require additional programs (see the "catp" alias). I also kick off jEnv in my zsh configuration.
# Install these dependencies now, as well as zsh (just in case, though it should be installed already).
brew install exa fzf jq zsh
# Remove any current installations of NVM, as they will cause the zsh-nvm plugin to fail its setup.
rm -rf ~/.nvm

# Copy files into place
/bin/cp -vr ./files/.editorconfig ~
/bin/cp -vr ./files/.gitconfig ~
/bin/cp -vr ./files/.vimrc ~
/bin/cp -vr ./files/.zshrc ~
/bin/cp -vr ./files/aliases.zsh $ZSH_CUSTOM/aliases.zsh

# Remove bash configuration files and move overrides files.
rm ~/.bash_profile ~/.bash_aliases
mv ~/.bash_overrides ~/.zsh_overrides

# Install oh-my-zsh.
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install powerline fonts.
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts

# Install oh-my-zsh plugins.
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm
