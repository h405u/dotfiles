export LANG=en_US.UTF-8

# source <(fzf --zsh)
# # Load fzf key bindings and completion
# [ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
# [ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
#
# # Configure fzf for completion
# export FZF_COMPLETION_TRIGGER=''        # Trigger fzf on partial Tab press
# export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
# export FZF_CTRL_T_OPTS='--preview "bat --style=numbers --color=always {} || cat {}"'
#
# # Use fzf-tab instead of default completion
# zstyle ':completion:*' fzf-completion '--height=40% --layout=reverse --border --ignore-case'

export EDITOR='nvim'

autoload -U compinit
compinit

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}' 'l:|=* r:|=*'

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
export http_proxy=http://127.0.0.1:1082
export https_proxy=http://127.0.0.1:1082

# homebrew curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export HOMEBREW_FORCE_BREWED_CURL=1

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

# zsh-autosuggestions
# source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# bindkey '^y' autosuggest-accept
# bindkey '^e' autosuggest-execute
# ZSH_AUTOSUGGEST_STRATEGY=(completion)

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
