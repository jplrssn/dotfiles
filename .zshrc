HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=10000

autoload -Uz compinit promptinit
compinit
promptinit

# Sync history between instances
setopt share_history

export TERM="screen-256color"
export VISUAL=nvim
export EDITOR=$VISUAL

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# History substring search
source $HOME/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

source $HOME/.zsh/prompt.zsh
source $HOME/.zsh/keys.zsh
source $HOME/.zsh/local.zsh
