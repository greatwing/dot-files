" /*
"  * init.vim
"  *
"  */
"   things that i need to include inside : .vim folder + .plugged + inside /c:/programs files / vim/ vim files / autoload/ + vim it self
"
"----------MICS---------------------"{{{1

let mapleader                                  = "'"

syntax on
set ch=2
let g:bufferline_echo = 1
set showcmd
set scrolloff  =10
set noerrorbells
set visualbell
set autochdir
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
set number
set autowrite
set wildmenu
set wildignore=*.o,*.obj,*~,*.pyc,*.so,*.swp,tmp/
set wildignore+=*.pdf,*.jpg,*.dmg,*.zip,*.png,*.gif,*DS_Store*
set wildignore+=*.map,*.js
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
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'https://github.com/jiangmiao/auto-pairs'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jnurmine/Zenburn'
Plug 'Quramy/tsuquyomi'
Plug 'plasticboy/vim-markdown'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'tpope/vim-unimpaired'
Plug 'SirVer/ultisnips'
Plug 'vim-scripts/a.vim'
Plug 'kana/vim-textobj-user'                                         
Plug 'kana/vim-textobj-function'                       
Plug 'dracula/vim'
Plug 'Quramy/vim-js-pretty-template'
Plug 'Valloric/YouCompleteMe' 
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/leafgarland/typescript-vim.git'            
Plug 'thinca/vim-textobj-function-javascript'                       
Plug 'burnettk/vim-angular'
call plug#end()            " required
" System default for mappings is now the "," character


let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces
autocmd FileType typescript nnoremap <leader>i :TsuImport<cr>


"----------ULTISNIPS---------------"{{{1}
let g:UltiSnipsExpandTrigger                        = '<c-l>'
let g:UltiSnipsJumpForwardTrigger                   = '<c-l>'
let g:UltiSnipsJumpBackwardTrigger                  = '<c-h>'
"----------YCM------PLUGIN---------"{{{1}
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_add_preview_to_completeopt                = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>','<Enter>']
let g:ycm_auto_trigger = 1
let g:ycm_always_populate_location_list             = 1
let g:ycm_collect_identifiers_from_tags_files       = 1
let g:ycm_key_list_select_completion = [ '<Down>', '<C-j>' ]
let g:ycm_key_list_previous_completion = [ '<Up>', '<C-k>' ]


"----------NERDTREE-PLUGIN---------"{{{1}
let g:NERDTreeMinimalUI = 1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeShowHidden = 0
let g:NERDTreeQuitOnOpen                            = 1
let NERDTreeIgnore=['__pycache__','\.git','\.pyc','\.js' ]
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
colorscheme PaperColor
set background=dark



"----------FUGITIVE-PLUGIN---------"{{{1}
nnoremap <leader>gs : Gstatus<cr>
nnoremap <leader>ge : Gedit<cr>
nnoremap <leader>gw : Gwrite<cr>
nnoremap <leader>gr : Gread<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gc :Commits<cr>

"----------MAPPINGCUSTOMIZATION----"{{{1}
nnoremap <silent><leader>wl      : wincmd l<CR>
nnoremap <silent><leader>wk      : wincmd k<CR>
nnoremap <silent><leader>wj      : wincmd j<CR>
nnoremap <silent><leader>wh      : wincmd h<CR>
nnoremap <silent><leader>w-      : aboveleft sp<cr>
nnoremap <silent><leader>w\       : aboveleft vsp<cr>
nnoremap <silent><leader>wr :wincmd r<cr>
nnoremap <silent><left>            :3wincmd <<cr>
nnoremap <silent><right>           :3wincmd ><cr>
nnoremap <silent><up>              :3wincmd +<cr>
nnoremap <silent><down>            :3wincmd -<cr>
nnoremap <silent><leader>wq :q<cr>
nnoremap <silent><leader>wc :q<cr>
nnoremap <silent><C-j> <C-d>
nnoremap <silent><C-k> <C-u>

nnoremap <silent><C-l> :bnext<cr>
nnoremap <silent><C-h> :bprev<cr>
nnoremap <silent> <leader>bx  : bd!<cr>
nnoremap <silent> <leader>bc  : bd!<cr>
nnoremap <silent><leader>bk  : bd!<cr>
nnoremap <silent><leader>bb  :Buffers<cr>
nnoremap <silent><leader>bp  :bprev<cr>
nnoremap <silent><leader>bn  :bnext<cr>
nnoremap <silent><leader>bt :BTags<cr>
nnoremap AA :Tags<cr>
nnoremap aa :Ag<cr>
nnoremap zz :Buffers<cr>
nnoremap ZZ :Windows<cr>

nnoremap <silent><leader>` : nohlsearch<cr>

nnoremap <silent><C-n> :cnext<cr>
nnoremap <silent><C-p> :cprev<cr>

nnoremap <silent><tab> :e#<cr>

nnoremap <silent><leader>s :w<cr>
nnoremap <silent><leader>q :q<cr>

nnoremap <silent><C-b> :YcmCompleter GoToDefinition<cr>

nnoremap <silent><leader>mm          : e $MYVIMRC<CR>

nnoremap <silent><leader>o :only<cr>

nmap <silent><leader>p "+p
nmap <silent><leader>y "+y
vmap <silent><leader>p "+p
vmap <silent><leader>y "+y

nnoremap <silent><leader>a :normal! zA<cr>
xnoremap    < <gv
xnoremap    > >gv


nnoremap <silent>`        :NERDTreeToggle<CR>
"nnoremap <silent>`        : call NERDTreeToggleInCurDir()<CR>

"----------ESCAPE-ALTERNATIVE------"{{{1}
nmap Q    @q
inoremap <silent>jk   <esc>
cnoremap <silent>jk   <esc>
command! Q    q " Bind :Q to :q
command! Qall qall
command! QA   qall
command! So  so %
command! SO so %
command! WQ   wq
command! WW   w !sudo tee % > /dev/null
command! E    e
command! Wq   wq
command! W    w

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif"`'")"'")

