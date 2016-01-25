#/bin/sh
apt-get install -y git curl zsh vim tmux  build-essential cmake  make gcc  python-dev  ctags
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
git clone https://github.com/powerline/fonts.git $HOME/fonts
$HOME/fonts/install.sh
cp -f $HOME/dot-files/.vimrc  $HOME/dot-files/.ycm_extra_conf.py $HOME/
cp -r $HOME/dot-files/UltiSnips $HOME/.vim/
sudo vim +BundleInstall +qall
$HOME/.vim/bundle/YouCompleteMe/install.py --clang-completer 
sudo chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo Please Relogin to apply the changes.
