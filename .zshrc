# Lines configured by zsh-newuser-install
HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=10000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/janlar01/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PROMPT='macbook | %~ > '
export VISUAL="vim"

# History substring search
source "$HOME/.zsh/zsh-history-substring-search.zsh"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

alias ls='gls --color=auto'
alias mvim='open -a /Applications/MacVim.app'

# dotfile management
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

