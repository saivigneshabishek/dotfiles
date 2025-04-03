# Lines configured by zsh-newuser-install
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nix/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d $HOME/.cache/zsh/zcompdump-$ZSH_VERSION
# End of lines added by compinstall

HISTFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/history"

autoload -U colors && colors
PS1="%B[%n@%{$fg[magenta]%}%M %{$reset_color%}%~%B]%b$ "

alias ls='ls --color=auto'
alias grep='grep --color=auto'

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

