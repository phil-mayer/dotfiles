# Note: this theme is based on the bundled Oh My ZSH theme titled "obraun".

if [ "$USER" = "root" ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  PROMPT='%{$fg_no_bold[cyan]%}[%*] %{$fg_no_bold[yellow]%}%n@%m%{$reset_color%} %{${fg[green]}%}%3~$(git_prompt_info)%{$fg_no_bold[$CARETCOLOR]%} ➜ %{$reset_color%}'
else
  PROMPT='%{$fg_no_bold[cyan]%}[%*] %{${fg[green]}%}%3~$(git_prompt_info)%{$fg_no_bold[$CARETCOLOR]%} ➜ %{$reset_color%}'
fi

RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%} ‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="›%{$reset_color%}"
