#dot-files

Hello, Welcome , this is my configuration files directory repo - vim, tmux, etc..

### Installation :
Make sure you have git on the machine.
Run the following commands :
- `git clone http://github.com/greatwing/dot-files.git ~/`
- `~/dot-files/install.sh`

If working on neovim :
- `mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}`
- `ln -s ~/.vim $XDG_CONFIG_HOME/nvim`
- `ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim`

