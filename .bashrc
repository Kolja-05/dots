case $- in
    *i*) ;;
      *) return;;
esac

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

alias ls='eza --icons'
alias ll='eza -la --icons'
alias grep='grep --color=auto'

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  fi
fi

export PATH="$PATH:/home/kolja/.local/bin"
[ -f "/home/kolja/.ghcup/env" ] && . "/home/kolja/.ghcup/env"
export COLORTERM=truecolor
export _ZO_DOCTOR=0
eval "$(~/.local/bin/zoxide init bash --cmd cd)"
eval "$(starship init bash)"
