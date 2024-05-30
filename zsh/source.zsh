# pfetch
export PF_INFO="ascii os host kernel memory shell editor palette"
export PF_COL2=9

# instant prompt
export POWERLEVEL9K_INSTANT_PROMPT=quiet
command -v pfetch > /dev/null && alias clear='clear && pfetch'
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
clear

dir_path=$(dirname "$0")
for script in $(ls $dir_path/source.d/*.zsh | sort); do
  source $script
done
