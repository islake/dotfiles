# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

HIST_STAMPS="yyyy-mm-dd"

plugins=(git)

alias fflo='nohup ~/programs/firefox-lopower/firefox &'
alias unidir='cd ~/Documents/shared/uni/yr2'
alias dropdown='tmuxinator start dropdown'
alias wttr="curl \"wttr.in/bristol?0npQ\""
alias mounthome="sudo mount -t cifs -o user=dietpi //cosypi/ULTIMA /mnt/ULTIMA"

ttv() {
  eval "streamlink twitch.tv/$1 ${2:-480p} &"
}

remind() {
  eval "echo \"fflo\""
  eval "echo \"mocp     music\""
  eval "echo \"unidir\""
  eval "echo \"dropdown\""
  eval "echo \"mc\""
  eval "echo \"wttr\""
  eval "echo \"t [-f id]|[task description]\""
  eval "echo \"mounthome\""
  eval "echo \"bluetoothctl\""
  eval "echo \"nmcli [con up NAME]\""
  eval "echo \"ls -lsnew\""
  eval "echo \"zathura\""
}

alias ls='exa'
alias ll="exa -alh --color=always"
alias tree="exa --tree"

alias cat="batcat"

alias t='python ~/programs/t/t.py --task-dir ~/programs/t/tasks --list tasks'

alias focus='~/scripts/switch_polybar.sh &'

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

eval "chpwd() exa"

# eval "$(zoxide init zsh)"
source ~/powerlevel10k/powerlevel10k.zsh-theme

setopt autocd
