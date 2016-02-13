" Hey There! 
" Created By:  Mor Zusman @ mor.zusmann@gmail.com
"
"
"
" Notes: 
" * ESC key is binded into j-j strike  
" * Snips - Ctrl J for instant snip selection (it selects the first one)
" * Ctrl-P - Jump between files .
" * ,q - Jump between directories and files.
" * ,e - Tag jump - Ctrl-N/P(to navigate) -> Enter to jump
" * ,w - Gundo tree - undo tree
" * ,r - Turn to Goyo mode (Goyo plugin)
" * ,1/2/3../0 - Jump to Buffers 1 - 10 (1 - 0)
" * ,a/d - Navigate to next/previous buffer
" * BackSlash - switch between .h and .c* files
" * ,,b - Build project.
" * NeoVim - ,t - Open terminal
" * ,r - Turn to Goyo mode (Goyo plugin)
" * ,` - stop highlight , useful after search.
" * ,ev - open .vimrc file.
" * ,,  - Goto
" * g->c (In nmode) - comment , g->c->c - uncomment.
" * ,gs/w/p/e - Git status/write/push/edit.
" * ,sd - Vertical split window.	
" * ,sw - Horizontal split window.	
" * Copy UltiSnaps Dir to .vim for more Cool snips! 	
" Make sure to change inside the Ultisnaps your name&email ,
" I may change it (pretty soon) with script that reads
" those parameters from git.
" * C-t , C-d - indent in insert mode.
filetype off                  " required
syntax enable



"-----------NeoVIM-Config------------"
if has('nvim')
	let s:editor_root=expand("~/.nvim")
	tnoremap <C-h> <C-\><C-n><C-w>h
	tnoremap <C-j> <C-\><C-n><C-w>j
	tnoremap <C-k> <C-\><C-n><C-w>k
	tnoremap <C-l> <C-\><C-n><C-w>l
	tnoremap jj    <C-\><C-n>
	nnoremap <leader>t         : belowright vsp term://zsh<CR>
	autocmd BufEnter term://* startinsert
	" let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 1
else
	let s:editor_root=expand("~/.vim")
	set ttyfast
	set nocompatible " be iMproved, required
	set t_vb=
endif



"-----------GVIM-Config--------------"
if !has('gui_running')
	set t_Co=256
end



"-----------PlugIns------------------"
call plug#begin('~/.vim/plugged')
" Plugin Manager
" Plugin 'VundleVim/Vundle.vim'
"Git pluging - see notes
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'
" CPP hl
Plug 'octol/vim-cpp-enhanced-highlight'
" Alignment plugin
Plug 'godlygeek/tabular'
Plug 'junegunn/vim-easy-align'
" FileExplorer for vim
Plug 'scrooloose/nerdtree'
" Markdown plugin for vim
Plug 'plasticboy/vim-markdown'
" colorscheme
Plug 'bling/vim-bufferline'
Plug 'junegunn/goyo.vim'
Plug 'chriskempson/vim-tomorrow-theme'
" Undo tree - very useful
Plug 'mbbill/undotree'
" Surround Plug , see notes
Plug 'tpope/vim-surround'
Plug 'mhinz/vim-signify'
" Powerfull snippets plugin
Plug 'SirVer/ultisnips'
" Enable us to repeat alot of things with '.'
Plug 'tpope/vim-repeat'
" optinal - vimtex - latex plugin for vim , see their page for details
" plugin 'lervag/vimtex'
" Best autocomplete engine for vim 
Plug 'Valloric/YouCompleteMe'
Plug 'Valloric/ListToggle'
" Snippets collection for vim
Plug 'honza/vim-snippets'
" Comments plugin see notes.
Plug 'tpope/vim-commentary'
" Automatically completes brackets
Plug 'Raimondi/delimitMate'
" Fuzzy file finder
Plug 'kien/ctrlp.vim'
" Function finder
Plug 'majutsushi/tagbar'
" c/pp plugins
Plug 'vim-scripts/a.vim'
Plug 'benekastah/neomake'
call plug#end()            " required
" System default for mappings is now the "," character

"-----------LeaderMap----------------"
let mapleader                                       = ","
let maplocalleader                                  = ","
let g:bufferline_echo                               = 0


"-----------GoyoConfig---------------"
let g:goyo_width                                    = 160
let g:goyo_height                                   = 90



"-----------UltiSnips----------------"
let g:UltiSnipsJumpForwardTrigger                   = '<C-J>'
let g:UltiSnipsJumpBackwardTrigger                  = '<C-K>'
let g:UltiSnipsExpandTrigger                        = '<C-J>'
let g:UltiSnipsListSnippets                         = '<C-L>'



"----------UndoTree-Plugin--------------"
let g:undotree_WindowLayout                                  = 3
let g:undotree_SetFocusWhenToggle = 1



"----------NerdTree-Plugin-----------"
let g:NERDTreeShowHidden                            = 0
let g:NERDTreeWinPos                                = "right"
" Don't need window after selecting file
let g:NERDTreeQuitOnOpen                            = 1
" Width of window
let g:NERDTreeWinSize                               = 40



"----------Vim-Syntax----------------"
let g:vim_markdown_folding_disabled                 = 1
let g:cpp_class_scope_highlight                     = 1



"----------You-Complete-Me-----------"
let g:ycm_seed_identifiers_with_syntax              = 1
let g:ycm_global_ycm_extra_conf                     = '~/.ycm_extra_conf.py'
let g:lt_height                                     = 5
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_warning_symbol                            = '>'
let g:ycm_complete_in_comments                      = 1
let g:ycm_add_preview_to_completeopt                = 1
let g:ycm_always_populate_location_list             = 1
let g:ycm_collect_identifiers_from_tags_files       = 1



"----------Must----------------------"
filetype plugin indent on    " required



"-------------------Ignore----------"
set wildignore +=*/.git/*,*/.hg/*,*/.svn/*



"----------Disable-Noise-------------"
" No sound on errors
set noerrorbells
set visualbell



"----------UI-Customize--------------"
" Set position indicator on bottom right
set ruler
set number
" Show command in last line, usually on by default
set showcmd
" Minimum number of lines that will always be above/below cursor
set scrolloff  =19



"----------ColorScheme---------------"
" colorscheme specifications
set background =dark
colorscheme Tomorrow-Night-Bright



"----------Fugitive-Plugin-----------"
" Remap for fugitive commands
nnoremap <leader>gs : Gstatus<cr>
nnoremap <leader>ge : Gedit<cr>
nnoremap <leader>gw : Gwrite<cr>
nnoremap <leader>gr : Gread<cr>
nnoremap <leader>gp : Gpush<CR>



"----------Window-Customization------"
nnoremap <C-l>      : wincmd l<CR>
nnoremap <C-k>      : wincmd k<CR>
nnoremap <C-j>      : wincmd j<CR>
nnoremap <C-h>      : wincmd h<CR>



"----------MappingCustomization------"
" Laziness
nnoremap ; :
nnoremap gh         : bp<cr>
nnoremap gl         : bn<cr>
nnoremap gx         : bd!<cr>
nnoremap <leader>` : nohlsearch<cr>
nnoremap <leader>sd        : aboveleft vsp<cr>
nnoremap <leader>ss        : aboveleft sp<cr>
nnoremap <leader>sw        : belowright sp<cr>
nnoremap <leader>sa        : belowright vsp<cr>
nnoremap <leader>q         : NERDTreeToggle<CR>
nnoremap <leader>w         : UndotreeToggle<CR>
nnoremap <leader>e         : TagbarOpenAutoClose<CR>
nnoremap <leader>v         : e $MYVIMRC<CR>
nnoremap gT  : YcmCompleter GoTo<CR>
xmap ga                <Plug>(EasyAlign)
nmap ga                <Plug>(EasyAlign)
nnoremap J							3j	
nnoremap K							3k
vnoremap J							3j
vnoremap K							3k
nnoremap <left>            :3wincmd <<cr>
nnoremap <right>           :3wincmd ><cr>
nnoremap <up>              :3wincmd +<cr>
nnoremap <down>            :3wincmd -<cr>
nnoremap <Enter>					:
vnoremap    > <gV
vnoremap    > >gV
nnoremap g= : normal! mmgg=G`m<CR>
nnoremap <leader><leader>v :so % <cr>
let g:lt_location_list_toggle_map   = '<C-z>'
let g:lt_quickfix_list_toggle_map   = '<C-c>'



"------------AutoCommand-Config------"
au BufRead,BufNewFile *.{c*,h*} : nnoremap <BS>  : A<CR>
au BufRead,BufNewFile *.{c*,h*} : nnoremap <leader><leader>b :Neomake cmake<CR>
autocmd VimEnter *
			\ let &statusline='%{bufferline#refresh_status()}'
			\ .bufferline#get_status_string()



"------------NeoMake-Configuration---"
let g:neomake_cpp_cmake_maker = {
			\ 'args': ['-C build']}
let g:neomake_cpp_enabled_makers = ['cmake']



"------------Escape-Alternative------"
nnoremap Q    <Nop>
inoremap jj   <esc>
cnoremap jj   <esc>
command! Q    q " Bind :Q to :q
command! Qall qall
command! QA   qall
command! E    e
command! Wq   wq
command! WW   w !sudo tee % > /dev/null
command! W    w



"------------Vim-Functioning---------"
" set encoding =utf-8
set cursorline
set showmatch
set nowrap
set smarttab
set foldmethod=marker
set shiftwidth =4
set tabstop    =4
set noexpandtab
set ignorecase smartcase
set nostartofline
set hidden
set laststatus =2
set autoread
set autowrite
set wildmenu
set hlsearch
set incsearch
set relativenumber
set timeoutlen =500
set pastetoggle=<F2>


