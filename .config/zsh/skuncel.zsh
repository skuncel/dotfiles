# alias
command -v pfetch > /dev/null && alias clear='clear && pfetch'
command -v lsd > /dev/null && alias ls='lsd --group-dirs first'
command -v lsd > /dev/null && alias lst='ls --tree'
command -v bat > /dev/null && alias cat='bat --pager=never'
command -v bat > /dev/null && alias catp='/bin/cat'
command -v bat > /dev/null && alias less='bat'
command -v gh > /dev/null && noglob alias ??='gh copilot suggest -t shell'
command -v gh > /dev/null && noglob alias git?='gh copilot suggest -t git'
command -v gh > /dev/null && noglob alias gh?='gh copilot suggest -t gh'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias grep='grep --color=auto'
alias fgrep='fgrep --colod=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias gpg='gpg --expert'
alias python='python3'
alias espinit='cargo generate esp-rs/esp-idf-template cargo'
alias espbuild='docker run -v ${PWD}:/project -w /project espressif/idf-rust:esp32_latest cargo build'
alias libressl='/usr/bin/openssl'
alias psc='docker run -it --rm rustscan/rustscan'

# keybinding
bindkey '^[[3~' delete-char # key 'delete'
bindkey "^[[A" history-beginning-search-backward # key 'up'
bindkey "^[[B" history-beginning-search-forward # key 'down'
bindkey "^[b" beginning-of-line
bindkey "^[f" end-of-line

# completions
if type brew &>/dev/null
then
  FPATH="${FPATH}:$(brew --prefix)/share/zsh/site-functions"
fi

# options
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select

# environment
## general
export EDITOR=vim
export PATH=$PATH:~/.bin

## ssh
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

## homebrew
export HOMEBREW_NO_ENV_HINTS=1

## pfetch
export PF_INFO="ascii os host kernel memory shell editor palette"
export PF_COL2=9

## bat
export BAT_THEME="ansi"

## zsh-autosuggestions
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
export ZSH_AUTOSUGGEST_STRATEGY=completion
export ZSH_AUTOSUGGEST_USE_ASYNC=true

## powerlevel10k
export ZLE_RPROMPT_INDENT=0
export POWERLEVEL9K_MODE='nerdfont-complete'
export POWERLEVEL9K_TRANSIENT_PROMPT=always

### prompt
export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh user_joined dir dir_writable_joined vcs kubecontext nvm rust_version go_version java_version newline status)
export POWERLEVEL9K_LEFT_SEGMENT_END_SEPARATOR='%F{008}$%F{008} '
export POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
export POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR='%F{008} %F{008}'
export POWERLEVEL9K_DIR_PATH_SEPARATOR="%F{008}/%F{cyan}"

export POWERLEVEL9K_VCS_SHOW_ON_COMMAND='git'
export POWERLEVEL9K_KUBECONTEXT_SHOW_ON_COMMAND='kubectl|helm|kubens|kubectx|oc|istioctl|kogito|k9s|helmfile|fluxctl|stern'
export POWERLEVEL9K_NVM_SHOW_ON_COMMAND='node|npm|yarn'
export POWERLEVEL9K_RUST_VERSION_SHOW_ON_COMMAND='cargo|rustc|rustup'
export POWERLEVEL9K_GO_VERSION_SHOW_ON_COMMAND='go'
export POWERLEVEL9K_JAVA_VERSION_SHOW_ON_COMMAND='java|javac|mvn|gradle'
export POWERLEVEL9K_STATUS_CROSS=true

export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

export POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

### icons
export POWERLEVEL9K_FOLDER_ICON=
export POWERLEVEL9K_HOME_ICON=
export POWERLEVEL9K_HOME_SUB_ICON=
export POWERLEVEL9K_ETC_ICON=
export POWERLEVEL9K_NETWORK_ICON=󰛳
export POWERLEVEL9K_TODO_ICON=
export POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON=󱘻
export POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON=󱘾
export POWERLEVEL9K_USER_ICON=
export POWERLEVEL9K_ROOT_ICON=
export POWERLEVEL9K_SUDO_ICON=
export POWERLEVEL9K_JAVA_ICON=
export POWERLEVEL9K_NODE_ICON=󰎙
export POWERLEVEL9K_RUST_ICON=
export POWERLEVEL9K_GO_ICON=
export POWERLEVEL9K_GOLANG_ICON=
export POWERLEVEL9K_SSH_ICON=󰢩

### colors
export POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="clear"
export POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="012"
export POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
export POWERLEVEL9K_DIR_HOME_FOREGROUND="012"
export POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="clear"
export POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="012"
export POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="red"
export POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="clear"

export POWERLEVEL9K_USER_BACKGROUND='clear'
export POWERLEVEL9K_USER_FOREGROUND='green'

export POWERLEVEL9K_VCS_LOADING_BACKGROUND="clear"
export POWERLEVEL9K_VCS_DEFAULT_BACKGROUND='clear'
export POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
export POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
export POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
export POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'
export POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
export POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='green'

export POWERLEVEL9K_JAVA_VERSION_BACKGROUND='clear'
export POWERLEVEL9K_JAVA_VERSION_FOREGROUND='green'

export POWERLEVEL9K_NVM_BACKGROUND='clear'
export POWERLEVEL9K_NVM_FOREGROUND='green'

export POWERLEVEL9K_RUST_VERSION_BACKGROUND='clear'
export POWERLEVEL9K_RUST_VERSION_FOREGROUND='202'

export POWERLEVEL9K_GO_VERSION_BACKGROUND='clear'
export POWERLEVEL9K_GO_VERSION_FOREGROUND='081'

export POWERLEVEL9K_STATUS_ERROR_BACKGROUND="clear"
export POWERLEVEL9K_STATUS_ERROR_FOREGROUND="001"
export POWERLEVEL9K_STATUS_OK_BACKGROUND="clear"
export POWERLEVEL9K_STATUS_BACKGROUND="clear"

export POWERLEVEL9K_SHORTEN_DELIMITER='%F{008} …%F{008}'
export POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
export POWERLEVEL9K_SHORTEN_STRATEGY="none"

export POWERLEVEL9K_SSH_BACKGROUND='clear'
export POWERLEVEL9K_SSH_FOREGROUND='yellow'

# plugin
source ${ZSH_AUTOSUGGESTIONS_PATH}
source ${ZSH_SYNTAX_HIGHLIGHTING_PATH}
source ${ZSH_POWERLEVEL10K_PATH}
command -v op > /dev/null && source ~/.config/op/plugins.sh
