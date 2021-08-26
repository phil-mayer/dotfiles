# phil-mayer/dotfiles

This repository contains my personal dotfiles, as well as a script to install them as symlinks into the correct
locations. In addition, I also include a script to set common macOS configuration per my personal preferences (though
this is not executed as part of the installation script).

My `.zshrc` file is written so that it can be used on both MacOS and Linux (tested on Ubuntu Server).

## Features

My dotfiles include a relatively basic configuration for common editors (via `.editorconfig`), Vim, and the `zsh` shell
with `oh-my-zsh`. My Oh My ZSH plugin list includes `fzf` (useful for history automcompletion and my `gbdel` alias in
`aliases.zsh`), `git` (mostly for aliases), and `zsh-nvm`.

## Repository Structure

The table below details the main contents of the repository.

| File                    | Description |
| ----------------------- | ------------------------------------------------------------------------------------------- |
| setup.sh                | Install dependencies and symlink files in `files` into the current user's home directory.   |
| set-preferences.sh      | Sets many of my personal macOS system preferences.                                          |
| files/.editorconfig     | My cross-project editor preferences (e.g. use 4 spaces instead of tabs for most files).     |
| files/.gitconfig        | My personal Git configuration. Probably not useful for anyone else.                         |
| files/.vimrc            | Extremely simple Vim configuration. Full disclosure: I'm absolutely not a Vim expert.       |
| files/.zshrc            | Main `zsh` configuration: start `oh-my-zsh`, lazy-load NVM, and enable autocompletion.      |
| files/aliases.zsh       | Aliases to list `package.json` scripts, update Homebrew packages, and more.                 |
| files/doriath.zsh-theme | Custom theme based on the packaged Oh My ZSH theme `obraun`.                                |

## Installation

Before proceeding, Linux users will need to install `exa`, `fzf`, `jq`, and the upgrade their version of `zsh`. After
doing so, run:

```(sh)
git clone https://github.com/phil-mayer/dotfiles.git
./dotfiles/setup.sh
```
