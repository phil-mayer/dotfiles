# phil-mayer/dotfiles
This repository contains my personal dotfiles, as well as scripts to install them into the correct location(s). In
addition, I also include a script to set common macOS configuration per my personal preferences (though this is not
executed as part of the installation script).

## Features
My dotfiles include a relatively basic configuration for common editors (via `.editorconfig`), Vim, and the `zsh` shell.
I liked the functionality and appearance of the `zsh` shell configured with some `oh-my-zsh` plugins and [themed with
`agnoster`](https://github.com/robbyrussell/oh-my-zsh/wiki/Themes#agnoster). My plugins include autocompletion for
jEnv, Git, and NVM, as well as NVM lazy-loading.

## Repository Structure
The table below details the main contents of the repository.

| File                | Description |
| ------------------- | ----------------------------------------------------------------------------------------------- |
| setup.sh            | Installation script: copies `files/*` into the current user's home directory, configures `zsh`. |
| set-preferences.sh  | Sets many of my personal macOS system preferences.                                              |
| files/.editorconfig | My cross-project editor preferences (e.g. use 4 spaces instead of tabs for most files).         |
| files/.gitconfig    | My personal Git configuration. Probably not useful for anyone else.                             |
| files/.vimrc        | Extremely simple Vim configuration. Full disclosure: I'm absolutely not a Vim expert.           |
| files/.zsh_aliases  | Aliases to list `package.json` scripts, update Homebrew packages, and more.                     |
| files/.zshrc        | Main `zsh` configuration: start `oh-my-zsh`, lazy-load NVM, and enable autocompletion.          |

## Installation
Follow the steps below to install the dotfiles and configure `zsh`:
```(sh)
git clone https://github.com/phil-mayer/dotfiles.git
./dotfiles/setup.sh
```
