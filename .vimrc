" Hey There! 

" Created By:  Mor Zusman @ mor.zusmann@gmail.com
" Notes: 
" 	* ESC key is binded into j-j strike  
" 	* Snips - Ctrl J for instant snip selection (it selects the first one)
" 	* Ctrl-P - Jump between files .
" 	* ,q - Jump between directories and files.
" 	* ,e - Tag jump - Ctrl-N/P(to navigate) -> Enter to jump
" 	* ,w - Gundo tree - undo tree
" 	* ,r - Alingment with Tabularize.
" 	* ,f - switch to light
" 	* ,g - switch to dark
" 	* ,` - stop highlight , useful after search.
" 	* ,ev - open .vimrc file.
"	* Copy UltiSnaps Dir to .vim for more Cool snips! 	
"	Make sure to change inside the Ultisnaps your name&email ,
"	I may change it (pretty soon) with script that reads
"	those parameters from git.
"	* g->c (In nmode) - comment , g->c->c - uncomment.
"	* gg->=->G indent the whole page(better to do this from the top 
"		the file. (vG-> <... to indent to the left)
"	* ,g/s/w/p/e - Git status/write/push/edit.
"	* ,sd - Vertical split window.	
"	* ,sw - Horizontal split window.	
"	* C-t , C-d - indent in insert mode.
set nocompatible              " be iMproved, required
filetype off                  " required

if !has('gui_running')	"set Terminal Vim to 256 colors
	set t_Co=256
endif
" System default for mappings is now the "," character
let g:showtabline = 2
let mapleader = ","
let maplocalleader = ","
"""""""""""""""""""""""""""""""""""""
let g:UltiSnipsJumpForwardTrigger  = '<C-J>'
let g:UltiSnipsJumpBackwardTrigger = '<C-K>'
let g:UltiSnipsExpandTrigger       = '<C-J>'
let g:UltiSnipsListSnippets        = '<C-L>'
""""""""""""""""""""""""""""""""""""
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline_theme="tomorrow"
let g:airline_left_sep=' '
let g:airline_right_sep=' '
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = ' '
""""""""""""""""""""""""""""""""""""""
" Tagbar configuration
let g:tagbar_left=1
" Tell gundo to close after a revert
let g:gundo_close_on_revert=1
""""""""""""""""""""""""""""""""""""""
let g:NERDTreeShowHidden = 0
" Don't need window after selecting file
let g:NERDTreeQuitOnOpen = 1
" Width of window
let g:NERDTreeWinSize = 40
""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled = 1
let g:cpp_class_scope_highlight = 1
"""""""""""""""""""""""""""""""""""""
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1
if !exists('g:ycm_semantic_triggers')
	let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
			\ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*,?)*',
			\ 're!\\includegraphics([^]]*])?{[^}]*',
			\ 're!\\(include|input){[^}]*'
			\ ]
"""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim  "Path to vundle's Dir
call vundle#begin()
Plugin 'bling/vim-airline'
" Plugin Manager
Plugin 'VundleVim/Vundle.vim'
"Git pluging - see notes
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'

Plugin 'L9'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" CPP hl
Plugin 'octol/vim-cpp-enhanced-highlight'
" Alignment plugin
Plugin 'godlygeek/tabular'
" FileExplorer for vim
Plugin 'scrooloose/nerdtree'
" Markdown plugin for vim
Plugin 'plasticboy/vim-markdown'
" colorscheme
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'morhetz/gruvbox'
" Undo tree - very useful
Plugin 'sjl/gundo.vim'
" Surround plugin , see notes
Plugin 'tpope/vim-surround'
" Powerfull snippets plugin
Plugin 'SirVer/ultisnips'
" Enable us to repeat alot of things with '.'
Plugin 'tpope/vim-repeat'
" Optinal - vimtex - Latex plugin for vim , see thier page for details
" Plugin 'lervag/vimtex'
" Best autocomplete engine for vim 
Plugin 'Valloric/YouCompleteMe'
" Snippets collection for vim
Plugin 'honza/vim-snippets'
" Comments plugin see notes.
Plugin 'tpope/vim-commentary'
" Automatically completes brackets
Plugin 'Raimondi/delimitMate'
" Fuzzy file finder
Plugin 'kien/ctrlp.vim'
" Function finder
Plugin 'majutsushi/tagbar'
call vundle#end()            " required
filetype plugin on
filetype plugin indent on    " required
"""""""""""""""""""""""""""""""""""""
" Turn backup off, since most files in a VCS
" set nobackup
" set nowritebackup
" set noswapfile
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif
"""""""""""""""""""""""""""""""""""""
" No sound on errors
set noerrorbells
set visualbell
set t_vb=
"""""""""""""""""""""""""""""""""""""
" Set position indicator on bottom right
set ruler
" set spell
set number
" Show command in last line, usually on by default
set showcmd
" Minimum number of lines that will always be above/below cursor
set scrolloff=10
""""""""""""""""""""""""""""""""""""""
" colorscheme specfications
set background=dark
colorscheme Tomorrow-Night-Bright
"""""""""""""""""""""""""""""""""""""
" Remap for fugitive commands
nmap <leader>gs :Gstatus<cr>
nmap <leader>ge :Gedit<cr>
nmap <leader>gw :Gwrite<cr>
nmap <leader>gr :Gread<cr>
nmap <leader>gp :Gpush<CR>
"""""""""""""""""""""""""""""""""""""
" Laziness
nnoremap ; :
nmap <leader>`  :nohl<cr>
nmap <leader>sd :vsp<cr>
nmap <leader>sw :sp<cr>
nmap <leader>w :GundoToggle<CR>
nmap <leader>e :TagbarOpenAutoClose<CR>
nmap <leader>q :NERDTreeToggle<CR>
nmap <leader>ev :vsp $MYVIMRC<CR>
nmap <Leader>r :Tabularize /\|<CR>
nmap <leader>f  :set background=light<CR>
nmap <leader>g  :set background=dark<CR>
"""""""""""""""""""""""""""""""""""""
nnoremap Q <Nop>
vnoremap i  <Esc>
imap jj <esc>
cmap jj <esc>
""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set ttyfast
set cursorline
set showmatch
set nowrap
set smarttab
set shiftwidth=2
set tabstop=8
set expandtab
set ignorecase smartcase
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
set mouse=a
set nostartofline
set lazyredraw 
set hidden  
set laststatus=2
set autoindent
set wildmenu
set hlsearch
set incsearch
set autoread
set relativenumber
set timeoutlen=500
" set spell
" Syntax checkgin' enabled 
syntax enable
command! Q q " Bind :Q to :q
command! Qall qall
command! QA qall
command! E e
command! W w
command! Wq wq
