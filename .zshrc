export LANG=en_US.UTF-8

# Enable case-insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'l:|=* r:|=*'

export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# export ARCHFLAGS="-arch $(uname -m)"

alias ls="ls --color=auto"

# vi mode
bindkey -v

source /usr/lib/spaceship-prompt/spaceship.zsh
SPACESHIP_USER_SHOW=false
SPACESHIP_HOST_SHOW=false
SPACESHIP_ASYNC_SYMBOL=""
SPACESHIP_ASYNC_SHOW_COUNT=false
export HF_ENDPOINT="https://hf-mirror.com"
