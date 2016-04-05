" /*
"  * init.vim
"  *
"  *      Author: greatwing - mor.zusmann@gmail.com
"  */
" INSTALLIONS:
" Rememeber to compile the ycm setup file (--clang-complete for c/c++)
" xclip for linux!
" terminator terminal !
" visit autofomat site to learn about the formaters
" for python format install autopip8
"
"----------MICS---------------------"{{{1
let mapleader                                  = "\<Space>"
" Neovim-qt Guifont command
command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "<args>") | let g:Guifont="<args>"
" Set the font to DejaVu Sans Mono:h13
Guifont Inconsolata LGC for Powerline:h12

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

if has('nvim')
    let s:editor_root=expand("~/.nvim")
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    tnoremap jk    <C-\><C-n>:bd!<cr>
    nnoremap <leader>t         : belowright vsp term://zsh<CR>

else
    let s:editor_root=expand("~/.vim")
    set ttyfast
    set nocompatible
    set t_vb=
endif
set t_Co=256
set guifont=Inconsolata\ Mono\ 15


"----------PLUG---------------------"{{{1}
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'jmcantrell/vim-virtualenv'
" Plug 'Konfekt/FastFold'
Plug 'bling/vim-bufferline'
Plug 'Chiel92/vim-autoformat'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-repeat'
Plug 'Valloric/YouCompleteMe'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jnurmine/Zenburn'
Plug 'honza/vim-snippets'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'terryma/vim-expand-region'
Plug 'SirVer/ultisnips'
Plug 'junegunn/vim-peekaboo'
Plug 'vim-scripts/a.vim'
Plug 'benekastah/neomake'
call plug#end()            " required
" System default for mappings is now the "," character


"----------MISC-PLUGINS------------"{{{1}
let g:vim_markdown_folding_disabled = 1

let g:peekaboo_window = 'vertical botright  60new'
let g:peekaboo_compact = 0

"----------YOU-COMPLETE-ME---------"{{{1}
let g:ycm_seed_identifiers_with_syntax              = 1
let g:ycm_global_ycm_extra_conf                     = '~/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_warning_symbol                            = '>'
let g:ycm_complete_in_comments                      = 1
let g:ycm_add_preview_to_completeopt                = 1
let g:ycm_always_populate_location_list             = 1
let g:ycm_collect_identifiers_from_tags_files       = 1
let g:ycm_key_list_select_completion = [ '<Down>', '<C-j>']
let g:ycm_key_list_previous_completion = [ '<Up>', '<C-k>']


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
colors zenburn
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'




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
nnoremap <leader>fd  :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <leader>ff  :FZF ~<cr>
nnoremap <leader>fg  :GitFiles<cr>
nnoremap <leader>fl  :Lines<cr>
nnoremap <leader>h :History<cr>

nmap <leader>p "+p
nmap <leader>y "+y
vmap <leader>p "+p
vmap <leader>y "+y

nnoremap <leader>a :normal! zA<cr>
xnoremap    < <gv
xnoremap    > >gv


nnoremap <tab>         : call NERDTreeToggleInCurDir()<CR>

"----------AUTOCOMMAND-CONFIG------"{{{1}
" au BufRead,BufNewFile *.{c*} set foldmethod=indent
au! BufRead,BufNewFile *.{c*,h*} : nnoremap <BS>  : A<CR>
au! BufRead,BufNewFile *.{c*,h*} : nnoremap <leader><leader>b :Neomake cmake<CR>
au! BufRead,BufNewFile,BufEnter *.{py,html,js,c*,h*} :IndentLinesReset
au! BufRead,BufNewFile * :nnoremap <leader>fa :Autoformat<cr>
au! BufWritePost *.py Neomake flake8

"----------NEOMAKE-PLUG------------"{{{1}
let g:neomake_cpp_cmake_maker = {
            \ 'args': ['-C build']}
let g:neomake_cpp_enabled_makers = ['cmake']
let g:neomake_open_list=2
let g:neomake_verbose=2
let g:neomake_place_sign=0
let g:neomake_list_height = 2

"----------FZF-----CONFIGURATION---"{{{1}

let g:fzf_action = {
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'down': '~30%' }
let g:fzf_buffers_jump = 1
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
autocmd VimEnter * command! Colors
            \ call fzf#vim#colors({'left': '15%', 'options': '--reverse --margin 30%,0'})


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
