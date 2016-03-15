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
let maplocalleader                                  = ","
map <space> \

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
" set ignorecase smartcase
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
set statusline=%t\ 
set statusline+=[%{strlen(&fenc)?&fenc:'none'},
set statusline+=%{&ff}]
set statusline+=%h
set statusline+=%m
set statusline+=%r\ 
set statusline+=%{fugitive#statusline()}\ 
set statusline+=%y
set statusline+=%=
set statusline+=%l/%L
"-------------VIM-VER-CONFIG--------"{{{1}

if has('nvim')
	let s:editor_root=expand("~/.nvim")
	tnoremap jk    <C-\><C-n>
	nnoremap <space>t         : belowright vsp term://zsh<CR>
	
else
	let s:editor_root=expand("~/.vim")
	set ttyfast
	set nocompatible 
	set t_vb=
endif
if !has('gui_running')
	set t_Co=256
else
    set guifont=Liberation\ Mono\ 12
end


"----------PLUG---------------------"{{{1}
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
" Plug 'Konfekt/FastFold'
Plug 'bling/vim-bufferline'
Plug 'Chiel92/vim-autoformat'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-surround'
" Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-repeat'
Plug 'Valloric/YouCompleteMe'
Plug 'NLKNguyen/papercolor-theme'
Plug 'honza/vim-snippets'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-unimpaired'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-expand-region'
Plug 'SirVer/ultisnips'
Plug 'junegunn/vim-peekaboo'
" Plug 'vim-scripts/a.vim'
Plug 'benekastah/neomake'
call plug#end()            " required
" System default for mappings is now the "," character


"----------MISC-PLUGINS------------"{{{1}
let g:vim_markdown_folding_disabled = 1

let g:expand_region_text_objects = {
      \ 'iw'  :0,
      \ 'iW'  :0,
      \ 'i"'  :1,
      \ 'i''' :1,
      \ 'i]'  :1,
      \ 'ib'  :1,
      \ 'ab'  :1,
      \ 'aB'  :1,
      \ 'iB'  :1,
      \ 'ai'  :1,
      \ 'ip'  :0,
      \ }
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
" let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1


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
colorscheme PaperColor
let g:indentLine_color_term = 239
let g:indentLine_char = '┊'




"----------FUGITIVE-PLUGIN---------"{{{1}
nnoremap <space>gs : Gstatus<cr>
nnoremap <space>ge : Gedit<cr>
nnoremap <space>gw : Gwrite<cr>
nnoremap <space>gr : Gread<cr>
nnoremap <space>gd :Gdiff<cr>
nnoremap <space>gc :Commits<cr>



"----------MAPPINGCUSTOMIZATION----"{{{1}
nnoremap <space>wl      : wincmd l<CR>
nnoremap <space>o :only<cr>
nnoremap <space>wk      : wincmd k<CR>
nnoremap <space>wj      : wincmd j<CR>
nnoremap <space>wh      : wincmd h<CR>
nnoremap <space>w-      : aboveleft sp<cr>
nnoremap <space>w\       : aboveleft vsp<cr>
nnoremap <space>ww :Windows<cr>
nnoremap <space>wr :wincmd r<cr>
nnoremap <left>            :3wincmd <<cr>
nnoremap <right>           :3wincmd ><cr>
nnoremap <up>              :3wincmd +<cr>
nnoremap <down>            :3wincmd -<cr>
nnoremap <space>wq :q<cr>
nnoremap <space>wc :q<cr>
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>

nnoremap <C-l> :bnext<cr>
nnoremap <C-h> :bprev<cr>
nnoremap <space>bx  : bd!<cr>
nnoremap <space>bb  :Buffers<cr>
nnoremap <space>bp  :bprev<cr>
nnoremap <space>bn  :bnext<cr>
nnoremap <space>bt :BTags<cr>

nnoremap <space>` : nohlsearch<cr>

nnoremap <C-n> :cnext<cr>
nnoremap <C-p> :cprev<cr>

nnoremap <space><tab> :e#<cr>

nnoremap <space>s :w<cr>
nnoremap <space>q :q<cr>

nnoremap <space>m          : e $MYVIMRC<CR>

nnoremap <space>fd  :YcmCompleter GoToDefinitionElseDeclaration<CR>

nnoremap <space>ff  :FZF ~<cr>
nnoremap <space>fg  :GitFiles<cr>
nnoremap <space>fl  :Lines<cr>
nnoremap <space>h :History<cr>


nnoremap <space>a :normal! zA<cr>

xnoremap    < <gv
xnoremap    > >gv

map L <Plug>(expand_region_expand)
map H <Plug>(expand_region_shrink)

nnoremap <BS>         : call NERDTreeToggleInCurDir()<CR>

"----------AUTOCOMMAND-CONFIG------"{{{1}
" au BufRead,BufNewFile *.{c*,h*} : nnoremap <BS>  : A<CR>
au BufRead,BufNewFile *.{c*,h*} : nnoremap <space><space>b :Neomake cmake<CR>
" au BufRead,BufNewFile *.{c*} set foldmethod=indent
autocmd! BufRead,BufNewFile,BufEnter *.{py,html,js,c*,h*} :IndentLinesReset
autocmd! BufWritePost *.py Neomake flake8
au! BufRead,BufNewFile *.py :nnoremap <space><space> :Autoformat<cr>:RemoveTrailingSpaces<cr>:w<cr>

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
nmap <space>p "+p
nmap <space>y "+y
vmap <space>p "+p
vmap <space>y "+y

