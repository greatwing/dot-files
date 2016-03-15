# Path to your oh-my-zsh installation.
#
# Base16 Shell
# BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
export ZSH=/$HOME/.oh-my-zsh
# tmux -2 attach &> /dev/null
# if [[ ! $TERM =~ screen ]]; then
# 	exec tmux -2
# fi
# in order to install tldr :
# mkdir -p ~/bin
# curl -o ~/bin/tldr https://raw.githubusercontent.com/raylee/tldr/master/tldr
# chmod +x ~/bin/tldr
ZSH_THEME="avit"

plugins=(git colored-man-pages colorize cp extract web-search git-extras command-not-found vim)

fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

fkill() {
  pid=$(ps -ef | sed 1d | fzf -m | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    kill -${1:-9} $pid
  fi
}  

fshow() {
  git log --graph --color=always \
      --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
      --bind "ctrl-m:execute:
                (grep -o '[a-f0-9]\{7\}' | head -1 |
                xargs -I % sh -c 'git show --color=always % | less -R') << 'FZF-EOF'
                {}
FZF-EOF"

}

# fh - repeat history
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed 's/ *[0-9]* *//')
}

fe() {
  IFS='
'
  local declare files=($(fzf --query="$1" --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-nvim} "${files[@]}"
  unset IFS
}

export PATH="$HOME/bin:/usr/local/bin:$PATH"
source $ZSH/oh-my-zsh.sh
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias pdf="atril"
alias tmux="tmux -2"
alias vim="nvim"
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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_COMPLETION_TRIGGER=''
bindkey '^Q' fzf-completion
bindkey '^I' $fzf_default_completion
