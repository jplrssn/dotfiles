# Vi-mode bindings
bindkey -v

# backspace=2; allow deletion past insert point
bindkey -v '^?' backward-delete-char

# ESC-v opens in editor
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

# do fuzzy matching for up/down matches
# requires zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


