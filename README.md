#dot-files

Hello, Welcome , this is my configuration files directory repo.

It contains my .vimrc ,ultisnips dir and ycm c-lang configuration file.

## Installation :
* `sudo apt-get install git curl vim zsh`
* `git clone https://github.com/greatwing/dot-files.git`
* `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
* Move .zshrc .vimrc to ~/                                 : `sudo mv -f ./dot-files/.vimrc ./dot-files/.zshrc ~/`
* Move Ultisnips dir to .vim                               : `sudo cp -r ./dot-files/Ultisnips ~/.vim/`
* Move .ycm_extra_conf.py to ~/ (configured inside .vimrc) : `sudo mv ./dot-files ~/`

## note : .vimrc contains instructions.
