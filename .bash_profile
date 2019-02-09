# Bash settings
# Phil Mayer

# Customize prompt
PS1="\[$(tput setaf 4)\]\[$(tput bold)\]\u \[$(tput sgr0)\][\[$(tput setaf 2)\]\w\[$(tput sgr0)\]] \\$ \[$(tput sgr0)\]"

# Aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if [ -f ~/.bash_overrides ]; then
    . ~/.bash_overrides
fi

# Additional PATH entries
PATH=$PATH:~/Scripts

