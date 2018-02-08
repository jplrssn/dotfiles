# Vi-mode bindings
bindkey -v

# backspace=2; allow deletion past insert point
bindkey -v '^?' backward-delete-char

# do fuzzy matching for up/down matches
# requires zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down


