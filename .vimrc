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
let g:airline_theme='molokai'

let g:airline_powerline_fonts = 1

" Enable syntastic integration
let g:airline#extensions#syntastic#enabled = 1

" Enable a smart tab top
let g:airline#extensions#tabline#enabled = 1

" Enable powerline fonts
set laststatus=2
""""""""""""""""""""""""""""""""""""

let g:UltiSnipsJumpForwardTrigger  = '<C-J>'
let g:UltiSnipsJumpBackwardTrigger = '<C-K>'
let g:UltiSnipsExpandTrigger       = '<C-J>'
let g:UltiSnipsListSnippets        = '<C-L>'
""""""""""""""""""""""""""""""""""""""""
map <C-X> :TagbarOpenAutoClose<CR>
""""""""""""""""""""""""""""""""""""""""

" Show hidden files by default
let g:NERDTreeShowHidden = 1

" Don't need window after selecting file
let g:NERDTreeQuitOnOpen = 1

" Classic theme with |'s instead of >'s
let g:NERDTreeDirArrows = 0

" Width of window
let g:NERDTreeWinSize = 40

map <C-n> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:molokai_original = 1

" Check syntax on file open
"let g:syntastic_check_on_open = 1

" Show errors in the line numbers to left
let g:syntastic_enable_signs = 1

" Format the syntastic message
let g:syntastic_stl_format = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]'

" List of files to ignore checking, may be useful later
" let g:syntastic_ignore_files = [ '\m^/usr/include/' ]

" Always use location list
let g:syntastic_always_populate_loc_list = 1

:" Override, don't think I'll run any unsecure perl files
" let g:syntastic_enable_perl_checker = 1

" Manually set important checkers:
let g:syntastic_python_checkers = ['python', 'pylint', 'flake8']
let g:syntastic_perl_checkers = ['perl', 'perlcritic']
let g:syntastic_rst_checkers = ['sphinx']

" Set what chechers are active or passive
let g:syntastic_mode_map = {
    \ 'mode': 'active',
    \ 'active_filetypes': ['c', 'cpp', 'java', 'lisp', 'python', 'perl', 'ruby',
    \                      'sh', 'xml', 'json', 'xhtml', 'html', 'css', 'javascript']
\ }

let g:syntastic_enable_signs = 1


" Relative numbers
set relativenumber

" Force a version of python
"let g:UltiSnipsUsePythonVersion = 2


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
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-repeat'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Raimondi/delimitMate'
Plugin 'tomasr/molokai'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'godlygeek/tabular'
call vundle#end()            " required
filetype plugin indent on    " required
" --------------------------------
nnoremap Q <Nop>




inoremap jk <Esc>
vnoremap i  <Esc>


" Remap Space + direction to move between split windows
nnoremap <silent> <Space>k :wincmd k<CR>
nnoremap <silent> <Space>j :wincmd j<CR>
nnoremap <silent> <Space>h :wincmd h<CR>
nnoremap <silent> <Space>l :wincmd l<CR>



" Turn backup off, since most files in a VCS
set nobackup
set nowritebackup
set noswapfile


" No annoying sound on errors
set noerrorbells
set visualbell
set t_vb=

" Set line numbering on left
set number

" Set position indicator on bottom right
set ruler

" Highlight current line in number side
" set cursorline

" Show command in last line, usually on by default
set showcmd

" Minimum number of lines that will always be above/below cursor
set scrolloff=10
set background=dark
try
  if &diff && (has('gui_running') || &t_Co > 255)
    colorscheme jellybeans
  elseif has('gui_running') || &t_Co > 255
    colorscheme molokai
    " Molokai CursorLine isn't bright enough
    hi CursorLine  ctermbg=236
  else
    colorscheme gruvbox
  endif
catch
  colorscheme desert
endtry
syntax on

highlight ColorColumn ctermbg=238
function! s:match_col_no()
  let col_no = exists('b:match_column_no') ? b:match_column_no : 100
  call matchadd('ColorColumn', '\%' . col_no . 'v', 100)
endfunction
" Set font when using gui version
if has('gui_running')
  if has('gui_gtk2')
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
  elseif has('gui_win32')
    set guifont=DejaVu_Sans_Mono_for_Powerline:h10:cANSI
  endif
endif

set autoindent

