set nocompatible
set tags+=/home/yk/dev/erlang/ctags.otp,/home/yk/dev/rust/ctags.rust
"""vundle related
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'Valloric/YouCompleteMe'
Bundle 'othree/eregex.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'camelcasemotion'
" non github repos'
"""Bundle 'git://git.wincent.com/command-t.git'
" ...

"""golang related
set rtp+=$GOROOT/misc/vim

filetype plugin indent on     " required!

"""easymotion related
let g:EasyMotion_keys='hjklasdfgyuiopqwertnmzxcvbHJKLASDFGYUIOPQWERTNMZXCVB'
let g:EasyMotion_leader_key="%"
let g:EasyMotion_grouping=1
hi EasyMotionTarget ctermbg=none ctermfg=red
hi EasyMotionShade  ctermbg=none ctermfg=blue

"""My favorite settings
set number
set ruler
set cmdheight=2
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set title
set linespace=0
set wildmenu
set showcmd
"----------------
syntax on
highlight LineNr ctermfg=darkgrey

set smartcase
set wrapscan
set hlsearch
set autoindent smartindent
set showmatch
set backspace=indent,eol,start
set clipboard=unnamed

set expandtab
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set nowrap

nnoremap <C-k> ^d$
nnoremap <C-a> <home>
nnoremap <C-e> <End>
nnoremap / :M/
nnoremap ,/ /
nnoremap s :FufFile<CR>

inoremap <C-e> <Esc>

map <C-d> <Del>
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>

autocmd vimenter * if !argc() | NERDTree | endif
