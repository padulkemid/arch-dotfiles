# 
#  __________             .___            .__    /\         
#  \______   \_____     __| _/____   ____ |  |   )/   ______
#   |     ___/\__  \   / __ |/  _ \_/ __ \|  |       /  ___/
#   |    |     / __ \_/ /_/ (  <_> )  ___/|  |__     \___ \ 
#   |____|    (____  /\____ |\____/ \___  >____/    /____  >
#                  \/      \/           \/               \/ 
#                 .__                                       
#  ________  _____|  |_________   ____                      
#  \___   / /  ___/  |  \_  __ \_/ ___\                     
#   /    /  \___ \|   Y  \  | \/\  \___                     
#  /_____ \/____  >___|  /__|    \___  >                    
#        \/     \/     \/            \/                     
#
#============================================================
# Core
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/padoel/.config/zsh/"

ZSH_THEME="spaceship"
HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-completions )

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source $(dirname $(gem which colorls))/tab_complete.sh

# from bash ( Defaults )
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"
export EDITOR="nvim"
export TERMINAL="kitty"
export BROWSER="google-chrome-stable"

# Aliases
alias c="clear"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias ls="colorls -A --sd"
alias preview="fzf --preview 'bat --theme=ansi-dark --color \"always\" {}'"
alias szc="source ~/.zshrc"
alias v="nvim"
alias vc="nvim ~/.config/nvim/init.vim"
alias x="exit"
alias zc="nvim ~/.zshrc"
alias i3c="nvim ~/.config/i3/config"
alias poc="nvim ~/.config/polybar/config"
alias please="sudo"
alias dots="git --git-dir=$HOME/.dots/ --work-tree=$HOME"
alias fcfg="nvim ~/.config/fontconfig/fonts.conf"
alias rm='echo "Are you sure to permanently delete this? if yes, use the mighty prepend."; false'
alias sx="startx"
alias postgrestart="systemctl start postgresql.service"
alias postgrestop="systemctl stop postgresql.service"
alias tmux="tmux -f ~/.config/tmux/tmux.conf"

# Application PATHs

# Ruby
export PATH="$PATH:/home/padoel/.gem/ruby/2.7.0/bin"

# pywal
( cat ~/.cache/wal/sequences & )

# Go
export GOPATH="$HOME/Gitgud/Gondar"

