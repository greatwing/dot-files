# Path to your oh-my-zsh installation.
  export ZSH=/$HOME/.oh-my-zsh

# in order to install tldr :
# mkdir -p ~/bin
# curl -o ~/bin/tldr https://raw.githubusercontent.com/raylee/tldr/master/tldr
# chmod +x ~/bin/tldr

# source "$HOME/setup-tomorrow-theme.sh"




  
ZSH_THEME="agnoster"

plugins=(git colored-man-pages colorize cp extract web-search)


export PATH="$HOME/bin:/usr/local/bin:$PATH"

source $ZSH/oh-my-zsh.sh

alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias vim ="vim" 
alias pdf="atril"
alias tmux="tmux -2"
alias s="sudo"
alias x="exit"
alias g="git"
alias gps="git push"
alias gcm="git commit"
alias ta="tmux -2 a"
alias gst="git status"
alias gl="git log" 
alias gb="git branch"
alias gco="git checkout"
alias gpl="git pull"
alias gd="git deff"
