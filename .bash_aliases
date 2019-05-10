# Convenience
alias cp="cp -i"
alias ll="exa --long --all --group --header --accessed --created --git"
alias gitb="git branch"
alias gitd="git diff"
alias gitl="git log --oneline"
alias gits="git status"

# Development
alias catp="cat package.json | jq -S .scripts | prettyjson"

# Docker
alias docker-cleanup="docker system prune --volumes"

# Git for local dotfiles repo
alias git-dotfiles="git --git-dir=$HOME/.git-dotfiles --work-tree=$HOME"

# Homebrew
alias brewski="brew update; brew cleanup -s; brew doctor"

