# zsh-autosuggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
export ZSH_AUTOSUGGEST_STRATEGY=completion
export ZSH_AUTOSUGGEST_USE_ASYNC=true
source ${ZSH_AUTOSUGGESTIONS_PATH}

# zsh-syntax-highlighting
source ${ZSH_SYNTAX_HIGHLIGHTING_PATH}

# 1password
command -v op > /dev/null && source ~/.config/op/plugins.sh

# fnm
eval "$(fnm env --use-on-cd)"
