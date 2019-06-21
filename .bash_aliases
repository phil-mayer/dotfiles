# Convenience
alias cp="cp -i"
alias ll="exa --long --all --group --header --accessed --created --git"

# Development
alias catp="cat package.json | jq -S .scripts | prettyjson"

# Docker
alias docker-cleanup="docker system prune --volumes"

# Git for local dotfiles repo
alias git-dotfiles="git --git-dir=$HOME/.git-dotfiles --work-tree=$HOME"

# Homebrew
alias brewski="brew update; brew upgrade; brew cleanup -s; brew doctor"
# alias brew-dependency-list="brew leaves | xargs brew deps --installed --for-each | sed "s/^.*:/$(tput setaf 4)&$(tput sgr0)/""

