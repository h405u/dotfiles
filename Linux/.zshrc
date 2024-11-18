export LANG=en_US.UTF-8

# Enable case-insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# export ARCHFLAGS="-arch $(uname -m)"

alias ls="ls --color=auto"

# vi mode
bindkey -v

source /usr/lib/spaceship-prompt/spaceship.zsh
