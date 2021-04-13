#!/bin/zsh

alias brewski="brew update; brew upgrade; brew cleanup -s; brew doctor"
alias catp="cat package.json | jq -S .scripts | prettyjson"
alias cp="cp -i"
alias ll="exa --long --all --group --header --accessed --created --git"

gbdel() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" | fzf --multi ) &&
  git branch -D $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}
