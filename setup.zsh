#!/bin/zsh

# setup.zsh
# Author: Phil Mayer
# Modified: 07/19/21

set -euo pipefail
IFS=$'\n\t'

info() {
  echo -e "[setup] $1"
}

install_brew_dependency() {
  if type $1 > /dev/null; then
    info "$1 is installed ✅"
  else
    info "Installing $1..."
    brew install $1
  fi
}

case "$OSTYPE" in
  darwin*)
    OS_NAME='macos'
  ;;
  linux*)
    OS_NAME='linux'
  ;;
esac

if [ $OS_NAME = 'macos' ]; then
  if type "brew" > /dev/null; then
    info 'Homebrew is installed ✅'
  else
    info 'Installing Homebrew...'
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  # Some of my aliases require additional programs (see the "catp" alias).
  # Install these, as well as the latest version of zsh for the latest features.
  install_brew_dependency "exa"
  install_brew_dependency "fzf"
  install_brew_dependency "jq"
  install_brew_dependency "zsh" # so that we have the latest version
fi

if [ -d "$ZSH" ]; then
  info 'Oh My ZSH is installed ✅'
else
  info 'Installing Oh My ZSH...'
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

  # Install powerline fonts.
  git clone https://github.com/powerline/fonts.git --depth=1
  cd fonts
  ./install.sh
  cd ..
  rm -rf fonts
fi

if [ -d "$ZSH/custom/plugins/zsh-nvm" ]; then
  info 'zsh-nvm is installed ✅'
else
  info 'Installing zsh-nvm...'
  # Remove any current installations of NVM, as they will cause the zsh-nvm plugin to fail its setup.
  rm -rf ~/.nvm

  git clone https://github.com/lukechilds/zsh-nvm $ZSH/custom/plugins/zsh-nvm
fi

info 'Creating symlinks for dotfiles...'

ln -sf "$(pwd)/files/.editorconfig" ~/.editorconfig
ln -sf "$(pwd)/files/.gitconfig" ~/.gitconfig
ln -sf "$(pwd)/files/.vimrc" ~/.vimrc
ln -sf "$(pwd)/files/.zshrc" ~/.zshrc
ln -sf "$(pwd)/files/aliases.zsh" $ZSH/custom/aliases.zsh
ln -sf "$(pwd)/files/fzf.zsh" $ZSH/custom/fzf.zsh

info 'Symlinks created ✅'

source ~/.zshrc
