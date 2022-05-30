#/bin/sh
# install requirements: 
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo add-apt-repository ppa:gnome-terminator

sudo apt-get update
sudo apt-get install -y git curl xclip zsh vim tmux build-essential cmake make gcc python-dev ctags git-extras \
	neovim python-pip python3-dev python3-pip terminator silversearch-ng

sudo pip install neovim
#git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d


curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# make links
ln -sf $HOME/dot-files/.vimrc $HOME/.vimrc
ln -sf  $HOME/dot-files/.ycm_extra_conf.py $HOME/.ycm_extra_conf.py
ln -sf  $HOME/dot-files/.ideavimrc $HOME/.ideavimrc
ln -sf $HOME/dot-files/UltiSnips $HOME/.vim/UltiSnips
ln -sf $HOME/dot-files/.zshrc $HOME/.zshrc
ln -sf $HOME/dot-files/.zshrc $HOME/.zshrc
ln -sf $HOME/dot-files/.spacemacs $HOME/.spacemacs

vim +PlugInstall +qall

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

ln -sf ~/.vim $XDG_CONFIG_HOME/nvim
ln -sf ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim


$HOME/.vim/plugged/YouCompleteMe/install.py #--clang-completer 

sudo chsh -s $(which zsh)

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
