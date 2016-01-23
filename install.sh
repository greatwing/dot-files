#!/bin/sh
apt-get install -y git curl zsh vim
apt-get install -y tmux
apt-get install -y build-essential cmake
apt-get install -y make gcc
apt-get install -y python-dev
apt-get install -y ctags
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
git clone https://github.com/powerline/fonts.git $HOME/fonts
$HOME/fonts/install.sh
git clone https://github.com/greatwing/dot-files.git
cp -f $HOME/dot-files/.vimrc  $HOME/dot-files/.ycm_extra_conf.py $HOME/
cp -r $HOME/dot-files/UltiSnips $HOME/.vim/
sudo vim +BundleInstall +qall
$HOME/.vim/bundle/YouCompleteMe/install.py --clang-completer 
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo Please Relogin to apply the changes.
