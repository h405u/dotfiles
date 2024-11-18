export LANG=en_US.UTF-8

# Enable case-insensitive completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

export EDITOR='nvim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# export ARCHFLAGS="-arch $(uname -m)"

alias saver="open -b com.apple.ScreenSaver.Engine"
alias ls="ls --color=auto"

# vi mode
bindkey -v

# SWI-Prolog
export PATH="/Applications/SWI-Prolog.app/Contents/MacOS:$PATH"

# proxies
# export http_proxy=http://127.0.0.1:1082
# export https_proxy=http://127.0.0.1:1082

# homebrew curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export HOMEBREW_FORCE_BREWED_CURL=1

# python3.12
# export PATH="/opt/homebrew/bin/python3.12/libexec/bin:$PATH"

# ghcup
# [ -f "/Users/shannonalan/.ghcup/env" ] && . "/Users/shannonalan/.ghcup/env"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# spaceship
source /opt/homebrew/opt/spaceship/spaceship.zsh

# yarn
export PATH="$PATH:$(yarn global bin)"
