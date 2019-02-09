# Convenience
alias cp="cp -i"
alias ll="ls -la"
alias gitb="git branch"
alias gitd="git diff"
alias gitl="git log --oneline"
alias gits="git status"
alias catp="cat package.json | jq -S .scripts | prettyjson"

# Docker
alias docker-cleanup="docker system prune --volumes"

# Git for local dotfiles repo
alias git-dotfiles="git --git-dir=$HOME/.git-dotfiles --work-tree=$HOME"

