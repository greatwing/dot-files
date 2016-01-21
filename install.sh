#!/bin/sh
apt-get install -y curl vim zsh
apt-get install -y build-essential cmake
apt-get install -y make gcc
apt-get install -y python-dev
apt-get install -y ctags
apt-get install -y zsh
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
git clone https://github.com/powerline/fonts.git 
$HOME/fonts/install.sh
git clone https://github.com/greatwing/dot-files.git
cp -f $HOME/dot-files/.vimrc  $HOME/
sudo vim +BundleInstall +qall
cp $HOME/dot-files/.ycm_extra_conf.py  $HOME/
cp -r $HOME/dot-files/UltiSnips $HOME/.vim/
echo Please Press Enter
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp -f $HOME/dot-files/.zshrc $HOME/
sudo chsh -s $(which zsh)
$HOME/.vim/bundle/YouCompleteMe/install.py --clang-completer 
echo Please Relogin to apply the changes.
