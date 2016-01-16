"Ok, Hey There! 
" 	You want your Vim to be up and ready ,Right?
" 	So , Here's the to do list for you:
" Requirements:
"
"	*Make sure that you have installed: 
"	 	- sudo apt-get install build-essential cmake
" 		- sudo apt-get install python-dev
" 		- sudo apt-get install ctags
"
"
" 1) Clone vundle(Plugin Manager) : 
"	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" 2) Install Powerline symbols (You want your status line to look cool ):
" 	git clone https://github.com/powerline/fonts.git -> ./fonts ->./install.sh
"	
" 3) Run :PluginInstall , Now You want a working word completion right?
" 
" 4) Get into ~/.vim/YouCompleteMe -> run ./install.py --clang-completer
" 	(for C++ semantic completion and many more)!!!
"
" 5) Run :VimProcInstall , now you have Vim shell , run it by :VimShell.
"
" 6) DONE!
"
" Notes: 
" 	* ESC key is binded into j-j strike  
" 	* Do not install airline + powerline symbols if you're working on a
" 		Plastic computer(it will slow Vim -> slower workflow).
" 	* Snips - Ctrl J for instant snip selection (it selects the first one)
" 	* Ctrl-P - Jump between files .
" 	* ,n - Jump between directories and files.
" 	* ,t - Tag jump - Ctrl-N/P(to navigate) -> Enter to jump
"	* Copy UltiSnaps Dir to .vim for more Cool snips! 	
"	Make sure to change inside the Ultisnaps your name&email ,
"	I may change it (pretty soon) with script that reads
"	those parameters from git.
"	* g->c (In nmode) - comment , g->c->c - uncomment.
"	* g->p - Move to the previous buffer , g->n - Move to the next.
"	* gg->=->G indent the whole page(better to do this from the top 
"		the file. (vG-> <... to indent to the left)
"	* ,g/s/w/p/e - Git status/write/push/edit.
"	* ,vs - Vim Shell , ,vp - Vertical split window.	
" 	Created By:  Mor Zusman @ mor.zusmann@gmail.com
"
"
set nocompatible              " be iMproved, required
filetype off                  " required

if !has('gui_running')	"set Terminal Vim to 256 colors
	  set t_Co=256
endif

"""""""""""""""""""""""""""""""""""""
let g:airline_theme='gruvbox'

let g:airline_powerline_fonts = 1

let g:airline#extensions#tagbar#enabled = 1

let g:airline#extensions#branch#enabled = 1
set laststatus=2
""""""""""""""""""""""""""""""""""""
let g:UltiSnipsJumpForwardTrigger  = '<C-J>'
let g:UltiSnipsJumpBackwardTrigger = '<C-K>'
let g:UltiSnipsExpandTrigger       = '<C-J>'
let g:UltiSnipsListSnippets        = '<C-L>'

""""""""""""""""""""""""""""""""""""
" VimShell
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'

" Show hidden files by default
let g:NERDTreeShowHidden = 1

" Don't need window after selecting file
let g:NERDTreeQuitOnOpen = 1

" Width of window
let g:NERDTreeWinSize = 40

""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1

"""""""""""""""""""""""""""""""""""""


let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1
"""""""""""""""""""""""""""""""""""""
set relativenumber

"""""""""""""""""""""""""""""""""""""

" Vundle settings -------------
set rtp+=~/.vim/bundle/Vundle.vim  "Path to vundle's Dir
call vundle#begin()
Plugin 'Shougo/vimproc.vim'
Plugin 'bling/vim-airline'
Plugin 'VundleVim/Vundle.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdtree'
Plugin 'plasticboy/vim-markdown'
Plugin 'morhetz/gruvbox'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-repeat'
Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-commentary'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
call vundle#end()            " required
filetype plugin on
filetype plugin indent on    " required
"""""""""""""""""""""""""""""""""""""

nnoremap Q <Nop>
vnoremap i  <Esc>
imap jj <esc>
cmap jj <esc>
"""""""""""""""""""""""""""""""""""""


" Turn backup off, since most files in a VCS
set nobackup
set nowritebackup
set noswapfile
"""""""""""""""""""""""""""""""""""""


" No annoying sound on errors
set noerrorbells
set visualbell
set t_vb=
"""""""""""""""""""""""""""""""""""""


" Set position indicator on bottom right
set ruler
" Set spell checking
set spell
" Highlight current line in number side
" set cursorline
set number
" Show command in last line, usually on by default
set showcmd

" Minimum number of lines that will always be above/below cursor
set scrolloff=10
""""""""""""""""""""""""""""""""""""""
 " Syntax checkgin' enabled 
syntax enable
" colorscheme specfications
set background=light
colorscheme gruvbox
"""""""""""""""""""""""""""""""""""""
 
" auto indent and avoiding annoying stuff
"
set hidden  
set autoindent
set wildmenu
set smartindent 

" Enable search Highlight
set hlsearch

" Incrementally match the search
set incsearch

" Automatically read a file that has changed on disk
set autoread
"""""""""""""""""""""""""""""""""""""
 
noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize -10<CR>
 """""""""""""""""""""""""""""""""""""


" System default for mappings is now the "," character
let mapleader = ","

" Remap for fugitive commands
nmap <leader>gs :Gstatus<cr>
nmap <leader>ge :Gedit<cr>
nmap <leader>gw :Gwrite<cr>
nmap <leader>gr :Gread<cr>
nmap <leader>gp :Gpush<CR>
"""""""""""""""""""""""""""""""""""""

nmap <leader>vs :VimShellPop<cr>
nmap <leader>sp :vsp<cr>
" GundoToggle will be open for ,,gu
nmap <leader>gu :GundoToggle<CR>
" :w and :wq is solved with ,,/q
nmap <leader><leader> :w<CR>
nmap <leader><leader>q :wq<CR>
""""""""""""""""""""""""""""""""""""""
 " Tagbar configuration
let g:tagbar_left=1
" Tell gundo to close after a revert
let g:gundo_close_on_revert=1
""""""""""""""""""""""""""""""""""""""
" Laziness
nnoremap ; :

nmap <leader>t :TagbarOpenAutoClose<CR>
nmap <leader>n :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""

