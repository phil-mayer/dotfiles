# Bash settings
# Phil Mayer

# Customize prompt
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1="\[\e[34m\]\u\[\e[m\]\[\e[34m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\]: \W\$(parse_git_branch)\[\033[00m\] \n\\$ "

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if [ -f ~/.bash_overrides ]; then
    . ~/.bash_overrides
fi

# Additional PATH entries
PATH=$PATH:~/Scripts

