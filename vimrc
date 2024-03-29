" key mapping
set backspace=indent,eol,start

" enable clipboard
set clipboard+=unnamed

" replace tab to space
set expandtab
" hard tab
set tabstop=2
" indent
set shiftwidth=2
set autoindent

" enable increment search
set incsearch

sy on
set number
set statusline=%F%m%r%h%w\ :%L\ :%l
set laststatus=2

" how to split windows
set splitbelow
set splitright

call plug#begin('~/.vim/plugged')
Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/nerdtree'
"ダウンロード後自分でmakeする
Plug 'Shougo/vimproc.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/neocomplete'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/vim-easy-align'
Plug 'digitaltoad/vim-jade'
Plug 'autowitch/hive.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-fugitive'
Plug 'simeji/winresizer'
Plug 'vim-scripts/gtags.vim'
"Plug 'joonty/vdebug'
call plug#end()

"for coding standard
if (exists('+colorcolumn'))
    set colorcolumn=160
    highlight ColorColumn ctermbg=6
endif

" NERDTreeのショートカットキー
nnoremap <silent><C-e> :NERDTreeToggle<CR>
" show dotfiles
let NERDTreeShowHidden=1

" ctrlp
let g:ctrlp_extensions = ['mixed']
" Guess vcs root dir
let g:ctrlp_working_path_mode = 'ra'
" Open new file in a horizontal splited tab
let g:ctrlp_open_new_file = 'h'
" position of mach widow
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:18'

" vimgrep, grep, Ggrep
autocmd QuickFixCmdPost *grep* cwindow

" winresizer
let g:winresizer_start_key = '<C-A>'
let g:winresizer_vert_resize = 1
let g:winresizer_horiz_resize = 1
