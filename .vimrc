" Hey There! 

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
" System default for mappings is now the "," character
let g:showtabline = 2
let mapleader = ","
let maplocalleader = ","

"""""""""""""""""""""""""""""""""""""
" let g:airline_theme='gruvbox'

" let g:airline_powerline_fonts = 1

  " let g:airline#extensions#bufferline#enabled = 1
" let g:airline#extensions#tagbar#enabled = 1

" let g:airline#extensions#branch#enabled = 1
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
if !exists('g:ycm_semantic_triggers')
	let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = [
			\ 're!\\[A-Za-z]*(ref|cite)[A-Za-z]*([^]]*])?{([^}]*,?)*',
			\ 're!\\includegraphics([^]]*])?{[^}]*',
			\ 're!\\(include|input){[^}]*'
			\ ]
"""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""

" Vundle settings -------------
set rtp+=~/.vim/bundle/Vundle.vim  "Path to vundle's Dir
call vundle#begin()
"Interactive shell
Plugin 'Shougo/vimproc.vim'
" Plugin 'bling/vim-airline'
" Plugin Manager
Plugin 'VundleVim/Vundle.vim'
"Uses vimproc to make a shell page inside vim
Plugin 'Shougo/vimshell.vim'
"Git pluging - see notes
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" CPP hl
Plugin 'octol/vim-cpp-enhanced-highlight'
" Alignment plugin
Plugin 'godlygeek/tabular'
" FileExplorer for vim
Plugin 'scrooloose/nerdtree'
" Markdown plugin for vim
Plugin 'plasticboy/vim-markdown'
" colorscheme
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
nnoremap Q <Nop>
vnoremap i  <Esc>
imap jj <esc>
vmap jj <esc> 
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
" Disables cuz it's makes some bugs with Ultisnips , enable it only on plain
" text editing
" set spell
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
set background=dark
colorscheme gruvbox
"""""""""""""""""""""""""""""""""""""

" auto indent and avoiding annoying stuff
"

"""""""""""""""""""""""""""""""""""""

noremap <silent> <C-F9>  :vertical resize -10<CR>
noremap <silent> <C-F10> :resize +10<CR>
noremap <silent> <C-F11> :resize -10<CR>
noremap <silent> <C-F12> :vertical resize -10<CR>
"""""""""""""""""""""""""""""""""""""


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
""""""""""""""""""""""""""""""""""""""
" Tagbar configuration
let g:tagbar_left=1
" Tell gundo to close after a revert
let g:gundo_close_on_revert=1
""""""""""""""""""""""""""""""""""""""
map <Leader> <Plug>(easymotion-prefix)
" Laziness
nnoremap ; :

nmap <leader>g :GundoToggle<CR>
nmap <leader>t :TagbarOpenAutoClose<CR>
nmap <leader>n :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""

set ttyfast
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
" Highlight current line
set cursorline
set showmatch
set nowrap
set smarttab
set ignorecase smartcase

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set list
" Enable mouse in all modes
set mouse=a
" Don’t reset cursor to start of line when moving around.
set nostartofline
let g:vimtex_complete_enable =0
set lazyredraw " Don't redraw screen when running macros.
set hidden  
set autoindent
set wildmenu

" Enable search Highlight
set hlsearch

" Incrementally match the search
set incsearch

" Automatically read a file that has changed on disk
set autoread

set relativenumber

command! Q q " Bind :Q to :q
command! Qall qall
command! QA qall
command! E e
command! W w
command! Wq wq

set timeoutlen=500

map <Leader>cu :Tabularize /\|<CR>
nmap <Leader>pi :source ~/.vimrc<cr>:PluginInstall<cr>

map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
