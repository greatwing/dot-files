#/bin/sh
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install -y git curl zsh vim tmux build-essential cmake make gcc python-dev ctags git-extras \
	neovim python-pip python3-dev python3-pip
pip install neovim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/powerline/fonts.git $HOME/fonts
$HOME/fonts/install.sh
cp -f $HOME/dot-files/.vimrc  $HOME/dot-files/.ycm_extra_conf.py $HOME/dot-files/.ideavimrc $HOME/
cp -r $HOME/dot-files/UltiSnips $HOME/.vim/
vim +PlugInstall +qall
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim


$HOME/.vim/plugged/YouCompleteMe/install.py --clang-completer 
sudo chsh -s $(which zsh)
echo "Please Re login to apply the changes."
echo "Press Enter."
read NOP 
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
