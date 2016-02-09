# Path to your oh-my-zsh installation.
#
export ZSH=/$HOME/.oh-my-zsh
screenfetch
# tmux -2 attach &> /dev/null
# if [[ ! $TERM =~ screen ]]; then
# 	exec tmux -2
# fi
# in order to install tldr :
# mkdir -p ~/bin
# curl -o ~/bin/tldr https://raw.githubusercontent.com/raylee/tldr/master/tldr
# chmod +x ~/bin/tldr
ZSH_THEME="avit"
plugins=(git colored-man-pages colorize cp extract web-search git-extras)
export PATH="$HOME/bin:/usr/local/bin:$PATH"
source $ZSH/oh-my-zsh.sh
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
# alias v="nvim"
# alias vim="nvim" 
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
alias gd="git diff"
alias ga="git add"
alias pic="eom"
alias c="clear"
alias vimrc="sudo vim ~/.vimrc"
alias updot="cp -f ~/.vimrc ~/.zshrc ~/.tmux.conf ~/dot-files/"
alias so="source ~/.zshrc"
