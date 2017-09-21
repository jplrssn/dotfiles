# Lines configured by zsh-newuser-install
HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/janlar01/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /arm/tools/setup/init/sh.d/modules-init

export PROMPT='%m | %~ > '
export TERM="xterm-256color"
export VISUAL=vim
export EDITOR=$VISUAL

alias loadmodules='source ~/scripts/loadmodules'
alias unloadmodules='source ~/scripts/unloadmodules'

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

loadmodules ~/init_modules.txt

# History substring search
source "$HOME/.zsh/zsh-history-substring-search.zsh"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# backspace=2; allow deletion past insert point
bindkey -v '^?' backward-delete-char

# ESC-v opens in editor
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line
