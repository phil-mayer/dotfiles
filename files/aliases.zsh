#!/usr/bin/env zsh

alias brewski="brew update; brew upgrade; brew autoremove; brew cleanup -s; brew doctor"
alias catp="cat package.json | jql '.\"scripts\"'"
alias cp="cp -i"
alias ll="exa --long --all --group --header --accessed --created --git"

alias gch="git for-each-ref --format='%(refname:short)' --sort=-committerdate refs/heads | fzf | xargs git checkout"

gbdel() {
  local branches branch
  branches=$(git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format="%(refname:short)") &&
  branch=$(echo "$branches" | fzf --multi ) &&
  git branch -D $(echo "$branch" | sed "s/.* //" | sed "s#remotes/[^/]*/##")
}

greb() {
  git rebase -i HEAD~$1 --autostash
}
