" /*
"  * init.vim
"  *
"  */
"   things that i need to include inside : .vim folder + .plugged + inside /c:/programs files / vim/ vim files / autoload/ + vim it self
"
"----------MICS---------------------"{{{1

let mapleader                                  = "\<Space>"

syntax on
set ch=2
let g:bufferline_echo = 1
set showcmd
set scrolloff  =10
set noerrorbells
set visualbell
set clipboard+=unnamedplus
set laststatus=2
set nocursorline
set showmatch
set smarttab
set shiftwidth =4
set tabstop    =8
set softtabstop =4
set expandtab
set ignorecase smartcase
set nostartofline
set hidden
set autoread
set autowrite
set wildmenu
set wildignore=*.o,*.obj,*~,*.pyc,*.so,*.swp,tmp/
set wildignore+=*.pdf,*.jpg,*.dmg,*.zip,*.png,*.gif,*DS_Store*
set hlsearch
set incsearch
set noswapfile
set nowritebackup
set timeout
set timeoutlen=500
set ttimeout
set ttimeoutlen=50
set statusline=%t\ \ [%{strlen(&fenc)?&fenc:'none'},\%{&ff}]
set statusline+=%h
set statusline+=%m
set statusline+=%r\ %{fugitive#statusline()}\%y
set statusline+=%=
set statusline+=%l/%L
"-------------VIM-VER-CONFIG--------"{{{1}

let s:editor_root=expand("~/.vim")
set ttyfast
set nocompatible
set t_vb=
set t_Co=256


"----------PLUG---------------------"{{{1}
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-bufferline'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jnurmine/Zenburn'
Plug 'Quramy/tsuquyomi'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-unimpaired'
Plug 'SirVer/ultisnips'
Plug 'vim-scripts/a.vim'
Plug 'kana/vim-textobj-user'                                         
Plug 'https://github.com/clausreinke/typescript-tools.vim.git'
Plug 'kana/vim-textobj-function'                       
Plug 'Quramy/vim-js-pretty-template'
Plug 'Valloric/YouCompleteMe'
Plug 'https://github.com/leafgarland/typescript-vim.git'            
Plug 'thinca/vim-textobj-function-javascript'                       
Plug 'burnettk/vim-angular'
call plug#end()            " required
" System default for mappings is now the "," character

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow


"----------ULTISNIPS---------------"{{{1}
let g:UltiSnipsExpandTrigger                        = '<c-l>'
let g:UltiSnipsJumpForwardTrigger                   = '<c-l>'
let g:UltiSnipsJumpBackwardTrigger                  = '<c-h>'

"----------NERDTREE-PLUGIN---------"{{{1}
let g:NERDTreeShowHidden = 0
let g:NERDTreeQuitOnOpen                            = 1
let NERDTreeIgnore=['\.git','\.pyc' ]
let g:NERDTreeWinSize                               = 40

function! NERDTreeToggleInCurDir()
    if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
        exe ":NERDTreeClose"
    else
        exe ":NERDTreeFind"
    endif
endfunction

"----------ColorScheme-------------"{{{1}

set guifont=Consolas:h14:cANSI
colorscheme Zenburn



"----------FUGITIVE-PLUGIN---------"{{{1}
nnoremap <leader>gs : Gstatus<cr>
nnoremap <leader>ge : Gedit<cr>
nnoremap <leader>gw : Gwrite<cr>
nnoremap <leader>gr : Gread<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gc :Commits<cr>



"----------MAPPINGCUSTOMIZATION----"{{{1}
nnoremap <leader>wl      : wincmd l<CR>
nnoremap <leader>wk      : wincmd k<CR>
nnoremap <leader>wj      : wincmd j<CR>
nnoremap <leader>wh      : wincmd h<CR>
nnoremap <leader>w-      : aboveleft sp<cr>
nnoremap <leader>w\       : aboveleft vsp<cr>
nnoremap <leader>ww :Windows<cr>
nnoremap <leader>wr :wincmd r<cr>
nnoremap <left>            :3wincmd <<cr>
nnoremap <right>           :3wincmd ><cr>
nnoremap <up>              :3wincmd +<cr>
nnoremap <down>            :3wincmd -<cr>
nnoremap <leader>wq :q<cr>
nnoremap <leader>wc :q<cr>
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

nnoremap <C-l> :bnext<cr>
nnoremap <C-h> :bprev<cr>
nnoremap <leader>bx  : bd!<cr>
nnoremap <leader>bc  : bd!<cr>
nnoremap <leader>bk  : bd!<cr>
nnoremap <leader>bb  :Buffers<cr>
nnoremap <leader>bp  :bprev<cr>
nnoremap <leader>bn  :bnext<cr>
nnoremap <leader>bt :BTags<cr>

nnoremap <leader>` : nohlsearch<cr>

nnoremap <C-n> :cnext<cr>
nnoremap <C-p> :cprev<cr>

nnoremap <leader><tab> :e#<cr>

nnoremap <leader>s :w<cr>
nnoremap <leader>q :q<cr>

nnoremap <leader>mm          : e $MYVIMRC<CR>

nnoremap <leader>o :only<cr>

nmap <leader>p "+p
nmap <leader>y "+y
vmap <leader>p "+p
vmap <leader>y "+y

nnoremap <leader>a :normal! zA<cr>
xnoremap    < <gv
xnoremap    > >gv


nnoremap <tab>         : call NERDTreeToggleInCurDir()<CR>

"----------ESCAPE-ALTERNATIVE------"{{{1}
nmap Q    @q
inoremap jk   <esc>
cnoremap jk   <esc>
command! Q    q " Bind :Q to :q
command! Qall qall
command! QA   qall
command! So  so %
command! SO so %
command! WQ   wq
command! E    e
command! Wq   wq
command! WW   w !sudo tee % > /dev/null
command! W    w
