# alias
command -v lsd > /dev/null && alias ls='lsd --group-dirs first'
command -v lsd > /dev/null && alias lst='ls --tree'
command -v bat > /dev/null && alias cat='bat --pager=never'
command -v bat > /dev/null && alias catp='/bin/cat'
command -v bat > /dev/null && alias less='bat'
command -v gh > /dev/null && noglob alias ??='gh copilot suggest -t shell'
command -v gh > /dev/null && noglob alias git?='gh copilot suggest -t git'
command -v gh > /dev/null && noglob alias gh?='gh copilot suggest -t gh'
command -v op > /dev/null && alias op-compose='op run --env-file="./op.env" -- docker compose'
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

# general
export EDITOR=vim
export PATH=$PATH:~/.bin

# ssh
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# homebrew
export HOMEBREW_NO_ENV_HINTS=1

# bat
export BAT_THEME="ansi"
