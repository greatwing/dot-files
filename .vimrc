set nocompatible              " be iMproved, required
filetype off                  " required
if !has('gui_running')
  set t_Co=256
  endif
" set the runtime path to include Vundle and initialize
" syntastic settings - 

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


""""""""""""""""""""""""""""""""""""'''
let g:airline_theme='luna'
if !exists('g:airline_symbols')
	  let g:airline_symbols = {}
  endif
let g:airline_symbols.space = "\ua0"
set fillchars+=stl:\ ,stlnc:\
let g:airline_powerline_fonts = 1

set laststatus=2
""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<F2>"
let g:UltiSnipsJumpForwardTrigger="<c-s>"
let g:UltiSnipsJumpBackwardTrigger="<c-a>"
""""""""""""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<CR>
""""""""""""""""""""""""""""""""""""""""

map <C-n> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf = '/home/mustang/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:molokai_original = 1


" Vundle settings -------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-repeat'
Plugin 'Valloric/YouCompleteMe'


call vundle#end()            " required
filetype plugin indent on    " required
" --------------------------------



