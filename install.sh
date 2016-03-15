#/bin/sh
# install requirements: 
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo add-apt-repository ppa:gnome-terminator

sudo apt-get update
sudo apt-get install -y git curl zsh vim tmux build-essential cmake make gcc python-dev ctags git-extras \
	neovim python-pip python3-dev python3-pip terminator

sudo pip install neovim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# make links
ln -sf $HOME/dot-files/.vimrc $HOME/.vimrc

ln -sf  $HOME/dot-files/.ycm_extra_conf.py $HOME/.ycm_extra_conf.py
ln -sf  $HOME/dot-files/.ideavimrc $HOME/.ideavimrc
ln -sf $HOME/dot-files/UltiSnips $HOME/.vim/UltiSnips

nvim +PlugInstall +qall

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}

ln -sf ~/.vim $XDG_CONFIG_HOME/nvim
ln -sf ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim


$HOME/.vim/plugged/YouCompleteMe/install.py #--clang-completer 

sudo chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
